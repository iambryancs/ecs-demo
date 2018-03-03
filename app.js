var express = require('express');

var app = express();

app.get('/', function (req, res) {
  res.send('Hello World!');
});

var port = process.env.PORT || 3000;

if(!module.parent){ app.listen(port); }

module.exports = app;
