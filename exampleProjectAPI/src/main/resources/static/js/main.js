const autoElement = document.getElementById('auto');
const content = document.getElementById('content');
let paginationCount = 15;
let activePage = 1;

const fetchData = async (url) => {
    try {
        const response = await fetch(url);
        return await response.json();
    } catch (error) {
        console.error(error);
        return null;
    }
};

const getUser = () => fetchData(`http://localhost:8888/api/v1/user/userById/${sessionStorage.getItem('id')}`);
const getAutomate = () => fetchData(`http://localhost:8080/VenApar/allTAPoComp/${sessionStorage.getItem('companyId')}`);

const loadUserData = async () => {
    const user = await getUser();
    if (!user) return;

    document.getElementById('user-name').textContent =
        `${user.familiya} ${user.imya[0]}.${user.otchestvo[0]}.`;
    document.getElementById('user-role').textContent = user.idRol.nazvaniye;
};

const renderTable = (data) => {
    const pageCount = Math.ceil(data.length / paginationCount);
    let startIdx = (activePage - 1) * paginationCount;
    const endIdx = Math.min(startIdx + paginationCount, data.length);
    const pageData = data.slice(startIdx, endIdx);

    if (data.length == 0) {
        startIdx = -1;
    }

    content.innerHTML = `
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
          <input type="text" placeholder="Фильтр" id="search">
          <div>
            <button>➕ Добавить</button>
            <button id="export-btn">↪ Экспорт</button>
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
            ${pageData.map((machine, index) => `
              <tr ${(index + 1) % 2 != 0 ? 'style="background-color: #E3E3E3FF;"' : ''}>
                <td>${machine.id}</td>
                <td style="color: #04a0d4">${machine.nazvaniye}</td>
                <td>${machine.idModel.nazvaniye}</td>
                <td style="color: #04a0d4">${machine.idCompanya.nazvaniye}</td>
                <td>${machine.idModem.id}</td>
                <td>${machine.addres}</td>
                <td>${machine.dataUstanovki}</td>
                <td class="actions">
                  <button>✏</button>
                  <button>🗑</button>
                  <button>🔓</button>
                </td>
              </tr>
            `).join('')}
          </tbody>   
        </table>
      </div>
      <div class="footer-container">
        <p>Записи с ${startIdx + 1} до ${endIdx} из ${data.length} записей</p>
        <div class="paggination">
          <button id="previous"><</button>
          <span>${activePage}</span>
          <button id="next">></button>
        </div>
      </div>
    </div>
  `;

    document.getElementById('export-btn').onclick = () => exportToCSV(data);

    document.getElementById('count-input').onkeyup = async (e) => {
        if (e.code == 'Enter') {
            paginationCount = +e.target.value;
            activePage = 1;
            data = await getAutomate();
            renderTable(data);
        }
    };

    document.getElementById('search').onchange = async (e) => {
        const newData = [];
        data = await getAutomate();
        for (machine of data) {
            if (machine.nazvaniye.indexOf(e.target.value) >= 0) {
                newData.push(machine);
            }
        }
        renderTable(newData);
    };

    document.getElementById('previous').onclick = () => {
        if (activePage > 1) {
            activePage--;
            renderTable(data);
        }
    };

    document.getElementById('next').onclick = () => {
        if (activePage < pageCount) {
            activePage++;
            renderTable(data);
        }
    };
};

autoElement.onclick = async () => {
    const data = await getAutomate();
    if (data) renderTable(data);
};

document.addEventListener('DOMContentLoaded', () => {
    loadUserData();

    document.querySelector('.user-dropdown-header').addEventListener('click', () => {
        document.querySelector('.user-dropdown').classList.toggle('active');
    });

    document.querySelector('.menu-toggle').addEventListener('click', () => {
        document.querySelector('.sidebar').classList.toggle('collapsed');
    });
});

function exportToCSV(data) {
    const csv = [
        'ID,Название,Модель,Компания,Модем,Адрес,Дата установки',
        ...data.map(v => `${v.id},"${v.nazvaniye}","${v.idModel.nazvaniye}","${v.idCompanya.nazvaniye}",${v.idModem.id},"${v.addres}",${v.dataUstanovki}`)
    ].join('\n');

    const link = document.createElement('a');
    link.href = 'data:text/csv;charset=utf-8,' + encodeURIComponent(csv);
    link.download = 'automates.csv';
    link.click();
}