// This function inserts the text upon being called, and then disables the click button
const openSesame = () => {
    var text = "Thank you! This button click was tested by our pipeline!";
    document.getElementById("clickMessage").innerHTML = text;
    document.getElementById("clickButton").disabled = true;
}

window.onload = function() {
    document.getElementById("clickButton").addEventListener("click", openSesame);
}

module.exports = openSesame;
