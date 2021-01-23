module.exports = app => {
   const gallery = require("../controllers/gallery.controller");
   
   app.get("/gallery/:lang", gallery.findAll);
}
