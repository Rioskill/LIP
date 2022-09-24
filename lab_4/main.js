function makeRowSelectable(row, className) {
    row.addEventListener('mouseover', (event) => {
        let el = event.target.parentElement;
        el.classList.add(className);
    });

    row.addEventListener('mouseout', (event) => {
        let el = event.target.parentElement;
        el.classList.remove(className);
    });
}

function addRow(name, price) {
    let table = document.getElementById("main_table");

    let row = document.createElement('tr');

    makeRowSelectable(row, 'selected-for-deletion');

    row.addEventListener('click', (event)=>{
        let row = event.target.parentElement;
        
        row.remove();
    });

    let name_col = document.createElement('td');
    name_col.textContent = name

    let price_col = document.createElement('td');
    price_col.textContent = price
    price_col.classList.add('price_col');

    row.appendChild(name_col);
    row.appendChild(price_col);

    table.appendChild(row);
}

function calculateTotalPrice() {
    const price_cols = document.getElementsByClassName('price_col');

    let sum = 0;
    for (const price_col of price_cols) {
        sum += parseInt(price_col.textContent);
    }

    let total_div = document.getElementById('total');

    let total_price_el = document.getElementById('total_price');
    total_price_el.textContent = sum;

    total_div.appendChild(total_price_el);
}

function setTdsClickable() {
    let menu_table = document.getElementById('menu_table');

    for (let row of menu_table.rows) {
        let name_td = row.children[0];
        let price_td = row.children[1];

        if (name_td.tagName == 'TH')
            continue;

        makeRowSelectable(row, 'selected');

        row.addEventListener('click', (event)=>{
            const row = event.target.parentElement;
            
            const name = row.children[0].textContent;
            const price = parseInt(row.children[1].textContent);

            addRow(name, price);
        });
    }
}

setTdsClickable();

let name_input = document.getElementById('name_input');
let price_input = document.getElementById('price_input');

let submit_button = document.getElementById('submit_button');

let total_btn = document.getElementById('calc_button');

submit_button.addEventListener('click', () => {
    addRow(name_input.value, price_input.value);
});

total_btn.addEventListener('click', () => {
    calculateTotalPrice();
});