const sql = require("./db");

// Constructor
const recipe_ing = function(recipe_ingredients) {
   this.recipeIngredientId = recipe_ingredients.recipeIngredientId;
	this.recipeId = recipe_ingredients.recipeId;
	this.ingredient_ch = recipe_ingredients.ingredient_ch;
   this.quantity_ch = recipe_ingredients.quantity_ch;
	this.ingredient_en = recipe_ingredients.ingredient_en;
   this.quantity_en = recipe_ingredients.quantity_en;
};

recipe_ing.getOne = (recipe_id, lang, result) => {
   let query = ""
   if (lang.toString().toLowerCase() === "eng") {
      query = `SELECT recipeIngredientId, recipe_id, ingredient_en as ingredient, quantity_en as quantity FROM recipe_ingredients WHERE recipe_id = ${recipe_id}`
   } else {
      query = `SELECT recipeIngredientId, recipe_id, ingredient_ch as ingredient, quantity_ch as quantity FROM recipe_ingredients WHERE recipe_id = ${recipe_id}`
   }

   sql.query(query, (err, res) => {
       if (err) {
           console.log("error: ", err);
           result(err, null);
           return;
       }
       
       if (res.length) {
           console.log("Recipe Ingredients: ", res);
           result(null, res);
           return;
       }

       // no recipe with such id
       result({ name: 'not_found' }, null) 
   });
};

module.exports = recipe_ing;