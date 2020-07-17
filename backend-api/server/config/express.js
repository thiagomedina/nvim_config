const express = require('express');
const bodyParser = require('body-parser');
const router = require('../routes');
const cosing = require('consign');
const consign = require('consign/lib/consign');
const app = express();


consign().include('/controller').into(app);


app.use(bodyParser.json());

app.use(bodyParser.urlencoded({
    extended: true
}));

app.use('api/', router);
module.exports = app;