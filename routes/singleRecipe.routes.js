module.exports = app => {
   const recipe = require("../controllers/singleRecipe.controller");

   app.get("/recipe/:lang/:id", recipe.findOne);
   app.get("/recipe/ingredients/:lang/:id", recipe.findIngredients);
   app.get("/recipe/steps/:lang/:id", recipe.findSteps);
}
