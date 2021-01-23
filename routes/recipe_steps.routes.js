module.exports = app => {
   const recipe_steps = require("../controllers/recipe_steps.controller");
   
   app.get("/recipe/steps/:lang/:id", recipe_steps.findOne);
}
