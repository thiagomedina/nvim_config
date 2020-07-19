const app = require('./server/config/express');
const config = require('./server/config/env');

app.listen(config.portApi, () => {

    `Server started on port ${config.portApi}(${config.env})`
});


module.exports = app;