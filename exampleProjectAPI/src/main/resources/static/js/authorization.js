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
const getUser = () => fetchData(`http://localhost:8888/api/v1/user/authorization?email=${emailInput.value}&password=${passwordInput.value}`);
const getCompany = (fCode) => fetchData("http://localhost:8888/api/v1/company/getById/" + fCode);

form.onsubmit = async (e) => {
    e.preventDefault();
    const codeInput = document.getElementById('code');
    if (!form.checkValidity()) {
        form.reportValidity();
        return;
    }
    else {
        const user = await getUser();
        const code = await getCompany(document.getElementById('code').value);
        if (user == null || code == null) {
            alert('Введены неверные данные!');
        } else {
            sessionStorage.setItem('id', user.id);
            sessionStorage.setItem('companyId', code);
            form.submit();
        }
    }
};
