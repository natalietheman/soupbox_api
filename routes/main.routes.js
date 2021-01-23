module.exports = app => {
   const main = require("../controllers/main.controller");
   
   app.get("/main/:lang", main.findAll);
}
