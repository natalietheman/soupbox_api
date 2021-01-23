module.exports = app => {
   const filter = require("../controllers/filter.controller");

   app.get("/recipes/filtered/:method/:season/:main/:lang", filter.findFiltered);
}

