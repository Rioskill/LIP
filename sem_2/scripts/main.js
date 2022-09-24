function copyData() {
    const input = document.getElementById("input_data").value;
    let p = document.createElement('p');
    p.innerText = input;
    p.id = "p-" + id_counter++;

    p.addEventListener('click', ()=>{
        p.remove();
    });

    document.body.appendChild(p);
}

let id_counter = 1;