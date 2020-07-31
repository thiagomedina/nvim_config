import express from "express";
import bodyParser, { urlencoded } from "body-parser";

const app = express();

app.use(bodyParser.json());
app.use(
  bodyParser.urlencoded({
    extended: false,
  })
);

app.listen(3000)

// const app = require('./server/config/express');
// const config = require('./server/config/env');

// app.listen(config.portApi, () => {

//     `Server started on port ${config.portApi}(${config.env})`
// });
// module.exports = app;
