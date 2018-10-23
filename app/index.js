const express = require('express');
const app = express();

app.get('/', function (req, res) {
  res.send('Página en blanco');
});

const port = process.env.PORT;

app.listen(port, function () {
  console.log(`App corriendo en ${port}`);
});