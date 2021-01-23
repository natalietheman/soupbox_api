const sql = require("./db");

// Constructor
const recipe_steps = function(recipe_steps) {
   this.recipeIngredientId = recipe_steps.recipeIngredientId;
	this.recipeId = recipe_steps.recipeId;
	this.step_ch = recipe_steps.step_ch;
   this.step_en = recipe_steps.step_en;
};

recipe_steps.getOne = (recipeId, lang, result) => {
   let query = ""
   if (lang.toString().toLowerCase() === "eng") {
      query = `SELECT recipeStepId, recipeId, step_en as step, sort_order FROM recipe_steps WHERE recipeId = ${recipeId}`
   } else {
      query = `SELECT recipeStepId, recipeId, step_ch as step, sort_order FROM recipe_steps WHERE recipeId = ${recipeId}`
   }

   sql.query(query, (err, res) => {
       if (err) {
           console.log("error: ", err);
           result(err, null);
           return;
       }
       
       if (res.length) {
           console.log("Recipe Steps: ", res);
           result(null, res);
           return;
       }

       // no recipe with such id
       result({ name: 'not_found' }, null) 
   });
};

module.exports = recipe_steps;