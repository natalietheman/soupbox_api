module.exports = app => {
   const seasons = require("../controllers/seasons.controller");
   
   app.get("/seasons/:lang", seasons.findAll);
}