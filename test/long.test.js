// This tests the click-script.js to make sure the right output is displayed

const fs = require("fs");
const path = require('path');
const html = fs.readFileSync(path.resolve(__dirname,"../templates/index.html"), 'utf8');

jest
    .dontMock('fs');

describe("Button Long Test", function() {
    beforeEach(() => {
	const openSesame = require('../js/click-script');
        document.body.innerHTML = html.toString();
//	document.getElementById('clickButton').click();
	openSesame();
	const clickMessage = document.getElementById('clickMessage').innerHTML;
    });
    afterEach(() => {
        jest.resetModules();
    });
    it("Button Long Test", function() {
        expect(clickMessage.innerHTML).toBe("Thank you!!");
    });
});