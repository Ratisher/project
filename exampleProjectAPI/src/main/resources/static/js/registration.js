const form = document.getElementById('form');
const emailInput = document.getElementById('email');
const passwordInput = document.getElementById('password');
const modal = document.getElementById('myModal');
const span = document.getElementsByClassName('close')[0];
const modalText = document.getElementById('modal-text');
const button = document.getElementById('button');
let generatedNumber = null;

button.onclick = (e) => {
    e.preventDefault();
    if (!form.checkValidity()) {
        form.reportValidity();
        return;
    }
    sessionStorage.setItem('email', emailInput.value);
    sessionStorage.setItem('password', passwordInput.value);
    updateBlock();
    callModal();
};

const fetchData = async (url) => {
    try {
        const response = await fetch(url);
        return (response.ok ? await response.json() : null);
    } catch (error) {
        console.error(error);
        return null;
    }
};

function updateBlock() {
    form.innerHTML = `
        <div class="input-group" id="inputGroup1">
            <label>Код с почты</label>
             <input id="codeInput" maxlength="6" required>
        </div>
        <div class="input-group" id="inputGroup2">
            <label>Код франчайзи</label>
            <input id="fCodeInput" required>
        </div>
            <button type="submit" id="button">Зарегистрироваться</button>
    `;
    document.getElementById('button').onclick = async (e) => {
        e.preventDefault();
        if (!form.checkValidity()) {
            form.reportValidity();
            return;
        }
        else {
            const fCode = document.getElementById('fCodeInput').value;
            const company = await getCompany(fCode);
            if (document.getElementById('codeInput').value == generatedNumber && company != null) {
                sessionStorage.setItem('companyId', fCode);
                form.submit();
            }
            else {
                alert('Введены не верные данные');
            }
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

const getCompany = (fCode) => fetchData("http://localhost:8888/api/v1/company/getById/" + fCode);

function generateSixDigitNumber() {
    return Math.floor(100000 + Math.random() * 900000);
}
