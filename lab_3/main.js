function printElement (element, nesting=0) {

    if (element == null)
        return '';

    let nestingString = '';
    if (nesting > 0) {
        nestingString = '\u00A0'.repeat(nesting * 2) + '|_';
    }

    let result = nestingString + element.nodeName + '\n';

    for(const child of element.children)
        result += printElement(child, nesting + 1);

    return result;
}

function printTree() {
    let container = document.getElementById("printer");

    container.innerText = "";

    const string = printElement(document.body);
    container.innerText = string;

    console.log(`string: "${string}"`)
}
