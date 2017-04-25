const marked = require('marked');
const handlebars = require('handlebars');
const fs = require('fs-extra')
const path = require('path');

var template;
var output = "";

marked.setOptions({
    renderer: new marked.Renderer(),
    gfm: true,
    tables: true,
    breaks: false,
    pedantic: false,
    sanitize: false,
    smartLists: true,
    smartypants: false
});

if (!fs.existsSync("./build")) {
    fs.mkdirSync("./build");
}

fs.readdirSync("./text").forEach(function (file, index) {
    var filePath = path.join("./text", file);
    var fileName = file.slice(0, -3);
    var data = fs.readFileSync(filePath, { encoding: "utf8" });
    output += marked(data);
});

template = handlebars.compile(fs.readFileSync("./static/index.hbs", { encoding: "utf8" }));

fs.writeFileSync("./build/index.html", template({ content: output }));

fs.copySync('./static/res', './build/res')