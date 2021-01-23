const sql = require("./db");

// Constructor
const recipe = function (recipe) {
   this.recipe_id = recipe.recipe_id;
   this.name_ch = recipe.name_ch;
   this.name_en = recipe.name_en;
   this.servings = recipe.servings;
   this.photo_url = recipe.photo_url;
   this.ingredient_ch = recipe.ingredient_ch;
   this.ingredient_en = recipe.ingredient_en;
   this.quantity_ch = recipe.quantity_ch;
   this.quantity_en = recipe.quantity_en;
   this.step_ch = recipe.step_ch;
   this.step_en = recipe.step_en;
};

recipe.getOne = (recipe_id, lang, result) => {
   let query = ""
   if (lang.toString().toLowerCase() === "eng") {
      query = `select name_en as name, photo_url, servings from recipe where recipe_id = ${recipe_id}`
   } else {
      query = `select name_ch as name, photo_url, servings from recipe where recipe_id = ${recipe_id}`
   }

   sql.query(query, (err, res) => {
      if (err) {
         console.log("error: ", err);
         result(err, null);
         return;
      }

      if (res.length) {
         console.log("Photo, Servings, Name: ", res[0]);
         result(null, res[0]);
         return;
      }

      // no recipe with such id
      result({ name: 'not_found' }, null)
   });
};

recipe.getIngredients = (recipe_id, lang, result) => {
   let query = ""
   if (lang.toString().toLowerCase() === "eng") {
      query = `select ingredient_en as ingredient, quantity_en as quantity from recipe_ingredients where recipe_id = ${recipe_id} order by sort_order`
   } else {
      query = `select ingredient_ch as ingredient, quantity_ch as quantity from recipe_ingredients where recipe_id = ${recipe_id} order by sort_order`
   }

   sql.query(query, (err, res) => {
      if (err) {
         console.log("error: ", err);
         result(err, null);
         return;
      }

      if (res.length) {
         console.log("Ingredients: ", res);
         result(null, res);
         return;
      }

      // no recipe with such id
      result({ name: 'not_found' }, null)
   });
};

recipe.getSteps = (recipe_id, lang, result) => {
   let query = ""
   if (lang.toString().toLowerCase() === "eng") {
      query = `select step_en as step from recipe_steps where recipe_id = ${recipe_id} order by sort_order`
   } else {
      query = `select step_ch as step from recipe_steps where recipe_id = ${recipe_id} order by sort_order`
   }

   sql.query(query, (err, res) => {
      if (err) {
         console.log("error: ", err);
         result(err, null);
         return;
      }

      if (res.length) {
         console.log("Steps: ", res);
         result(null, res);
         return;
      }

      // no recipe with such id
      result({ name: 'not_found' }, null)
   });
};

module.exports = recipe;