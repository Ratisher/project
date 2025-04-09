const form = document.getElementById('form');
async function addUser() {
    try {
        const surname = document.getElementById('surname');
        const firstname = document.getElementById('firstname');
        const patronymic = document.getElementById('patronymic');
        const telephone = document.getElementById('telephone');
        const data = {
            'familiya': surname.value,
            'imya': firstname.value,
            'otchestvo': patronymic.value,
            'email': sessionStorage.getItem('email'),
            'parol': sessionStorage.getItem('password'),
            'telephon': telephone.value
        };
        const response = await fetch('http://localhost:8080/api/v1/user/addUser/' + 1, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        });
        if (response.status != 200) {
            return null;
        }
        else {
            const user = await response.json();
            sessionStorage.setItem('id', user.id);
            return user;
        }
    } catch (error) {
        console.error(error);
        return null;
    }
}

form.onsubmit = async (e) => {
    e.preventDefault();
    if (await addUser() != null) {
         form.submit();
    }
    else {
         alert('Ошибка');
    }
};
