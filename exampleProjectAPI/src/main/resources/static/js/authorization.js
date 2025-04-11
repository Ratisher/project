const form = document.getElementById('form');

const fetchData = async (url) => {
    try {
        const response = await fetch(url);
        return (response.ok ? await response.json() : null);
    } catch (error) {
        console.error(error);
        return null;
    }
};

const emailInput = document.getElementById('email');
const passwordInput = document.getElementById('password');
const getUser = () => fetchData(`http://localhost:8080/api/v1/user/authorization?email=${emailInput.value}&password=${passwordInput.value}`);

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
