const autoElement = document.getElementById('auto');
let paginationCount = 10;
async function getUser() {
  try {
    const response = await fetch('http://localhost:8080/api/v1/user/userById/' + sessionStorage.getItem('id'));
    const user = await response.json();
    return user;
  } catch (error) {
    console.error(error);
    return null;
  }
}

async function getAutomate() {
    try {
        const response = await fetch('http://10.12.208.63:8080/VenApar/getAllTA');
        const auto = await response.json();
        return auto;
    } catch (error) {
        console.error(error);
        return null;
    }
}

autoElement.onclick = () => {
    loadAuto();
};

async function loadData() {
    const user = await getUser();
    const userName = document.getElementById('user-name');
    const userRole = document.getElementById('user-role');
    userName.textContent = user.familiya + ' ' + user.imya.charAt(0) + '.' + user.otchestvo.charAt(0) + '.';
    userRole.textContent = user.idRol.nazvaniye;
};

async function loadAuto() {

    const content = document.getElementById('content');

    const data = await getAutomate();

    const limitedData = data.slice(0, paginationCount);

    content.innerHTML =
        `
        <div class="table-container">
            <div class="header-container">
                <div class="header-text">
                    <h2>Торговые автоматы</h2>
                    <p class="countUp">Всего найдено ${data.length} шт.</p>
                </div>
            </div>
            <div class="main-container">
                <div class="setting-container">
                    <div class="select-count-element">
                        <p>Показать</p>
                        <input type="number" value="${paginationCount}" id="count-input">
                        <p>записей</p>
                    </div>
                    <input type="text" placeholder="Фильтр">
                    <div>
                        <button>➕ Добавить</button>
                        <button>↪ Экспорт</button>
                    </div>
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Название автомата</th>
                            <th>Модель</th>
                            <th>Компания</th>
                            <th>Модем</th>
                            <th>Адрес / Место</th>
                            <th>В работе с</th>
                            <th>Действия</th>
                        </tr>
                    </thead>
                    <tbody>
                        ${limitedData.map(machine => 
                            `
                             <tr>
                                <td>${machine.id}</td>
                                <td>${machine.nazvaniye}</td>
                                <td>${machine.idModel.nazvaniye}</td>
                                <td>${machine.idCompanya.nazvaniye}</td>
                                <td>${machine.idModem.id}</td>
                                <td>${machine.addres}</td>
                                <td>${machine.dataUstanovki}</td>
                                <td class="actions">
                                    <span>✅</span>
                                    <span>☐</span>
                                    <span>✅</span>
                                </td>
                            </tr>
                            `
                        ).join('')}
                    </tbody>   
                </table>
                <div class="footer-container">
                    <p>Записи с 1 до ${paginationCount} из ${data.length} записей</p>
                </div>
            </div>
        </div>
        `
    document.getElementById('count-input').onkeydown = (e) => {
        if (e.code = 'Enter') {
            paginationCount = document.getElementById('count-input').value;
            loadAuto();
        }
    }
};

document.addEventListener('DOMContentLoaded', () => {
    const dropdown = document.querySelector('.user-dropdown');
    const header = document.querySelector('.user-dropdown-header');

    header.addEventListener('click', () => {
        dropdown.classList.toggle('active');
    });
});

document.addEventListener('DOMContentLoaded', () => {
    const menuToggle = document.querySelector('.menu-toggle');
    const sidebar = document.querySelector('.sidebar');

    menuToggle.addEventListener('click', () => {
        sidebar.classList.toggle('collapsed');
    });
});

document.addEventListener('DOMContentLoaded', loadData());