const form = document.getElementById('form');
const code = 123;
async function getUser() {
    try {
        const emailInput = document.getElementById('email');
        const passwordInput = document.getElementById('password');
        const response = await fetch(`http://localhost:8080/api/v1/user/authorization?email=${emailInput.value}&password=${passwordInput.value}`);
        if (response.ok) {
            return await response.json();
        }
        else {
            return null;
        }
    } catch (error) {
        console.error(error);
        return null;
    }
}

form.onsubmit = async (e) => {
    e.preventDefault();
    const codeInput = document.getElementById('code');
    const user = await getUser();
    if (user == null || codeInput.value != code) {
        alert('Введены неверные данные!');
    }
    else {
        sessionStorage.setItem('id', user.id);
        form.submit();
    }
};
