function addRow(name, price) {
    let table = document.getElementById("main_table");

    let row = document.createElement('tr');

    row.addEventListener('mouseover', (event)=>{
        const el = event.target;
        el.classList.add("selected");
    });

    row.addEventListener('mouseout', (event)=>{
        const el = event.target;
        el.classList.remove("selected");
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

    if (total_price_el == null) {
        total_price_el = document.createElement('div');
        total_price_el.id = "total_price";
    }
    total_price_el.textContent = sum;

    total_div.appendChild(total_price_el);
}

let name_input = document.getElementById('name_input');
let price_input = document.getElementById('price_input');

let submit_button = document.getElementById('submit_button');

let total_btn = document.getElementById('calc_button');

submit_button.addEventListener('click', ()=>{
    addRow(name_input.value, price_input.value);
});

total_btn.addEventListener('click', ()=>{
    calculateTotalPrice();
});