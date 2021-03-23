function alertMessage(text) {
    alert(text)
    return 'from js with love';
}

window.logger = (flutter_value) => {
   console.log({ js_context: this, flutter_value });
}