function printElement (element, nesting=0) {

    if (element == null)
        return '';

    let nestingString = '';
    if (nesting > 0) {
        nestingString = ' '.repeat(nesting * 2) + '|_';
    }

    let result = nestingString + element.tagName + '\n';

    for(let child of element.children)
        result += printElement(child, nesting + 1);

    return result;
}


let string = printElement(document.body);
console.log(string);
let container = document.getElementById("printer");
container.innerText = string;
