const form = document.getElementById('form');
const emailInput = document.getElementById('email');
const passwordInput = document.getElementById('password');
const modal = document.getElementById('myModal');
const span = document.getElementsByClassName('close')[0];
const modalText = document.getElementById('modal-text');
const button = document.getElementById('button');
const fCode = 123;
let generatedNumber = null;

button.onclick = (e) => {
    e.preventDefault();
    sessionStorage.setItem('email', emailInput.value);
    sessionStorage.setItem('password', passwordInput.value);
    updateBlock();
    callModal();
};

function updateBlock() {
    const inputGroup1 = document.getElementById('inputGroup1');
    const inputGroup2 = document.getElementById('inputGroup2');
    while (inputGroup1.firstChild) {
        inputGroup1.removeChild(inputGroup1.firstChild);
    }
    while (inputGroup2.firstChild) {
        inputGroup2.removeChild(inputGroup2.firstChild);
    }
    button.remove();
    const label1 = document.createElement('label');
    label1.textContent = 'Код с почты';
    const codeInput = document.createElement('input');
    codeInput.maxLength = 6;
    codeInput.type = 'text';
    codeInput.required = true;
    inputGroup1.append(label1, codeInput);
    const label2 = document.createElement('label');
    label2.textContent = 'Код франчайзи';
    const franCodeInput = document.createElement('input');
    franCodeInput.type = 'text';
    franCodeInput.required = true;
    inputGroup2.append(label2, franCodeInput);
    const newButton = document.createElement('button');
    newButton.textContent = 'Зарегистрироваться';
    form.append(newButton);
    newButton.onclick = (e) => {
        e.preventDefault();
        if (codeInput.value == generatedNumber && franCodeInput.value == fCode) {
            form.submit();
        }
        else {
            alert('Введены не верные данные');
        }
    };
}

function callModal() {
    generatedNumber = generateSixDigitNumber();
    modalText.textContent = 'Код: ' + generatedNumber;
    modal.style.display = "block";
    span.onclick = () => {
        modal.style.display = "none";
    };
    window.onclick = (event) => {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    };
}

async function getUser() {
    try {
        const response = await fetch("api/v1/user/authorization");
        console.log(response.status);
    } catch (error) {
        console.error(error);
    }
}

function generateSixDigitNumber() {
    return Math.floor(100000 + Math.random() * 900000);
}
