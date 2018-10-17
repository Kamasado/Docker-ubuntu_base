var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Hola mundo!');
});

app.listen(process.env.PORT, function () {
  console.log(`Web corriendo en el puerto ${process.env.PORT}`);
});
