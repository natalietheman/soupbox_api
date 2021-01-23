module.exports = app => {
    const methods = require("../controllers/method.controller");
    
    app.get("/methods/:lang", methods.findAll);
}