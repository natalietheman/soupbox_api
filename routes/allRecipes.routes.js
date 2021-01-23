module.exports = app => {
    const recipes = require("../controllers/allRecipes.controller");
    
    app.get("/recipes/:lang", recipes.findAll);
}
