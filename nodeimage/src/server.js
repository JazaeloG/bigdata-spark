var express= require('express');

var PORT=8001;

var app = express();
app.get('/', function(req, res){
    res.sendfile('/src/index.html');
});

app.Listen(PORT);
console.log('Corriendo en el puerto: '+ PORT);
