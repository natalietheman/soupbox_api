const sql = require("./db");

// Constructor
const recipes = function(recipe) {
    this.recipe_id = recipe.recipe_id;
    this.name_ch = recipe.name_ch;
    this.name_en = recipe.name_en;
    this.method_id = recipe.method_id;
    this.servings = recipe.servings;
    this.summary_ch = recipe.summary_ch;
    this.summary_en = recipe.summary_en;
    this.photo_url = recipe.photo_url;
    this.height = recipe.height;
    this.width = recipe.width;
    this.photo_sort_order = recipe.photo_sort_order;
    this.sort_order = recipe.sort_order;
};

recipes.getAll = (lang, result) => {
   let query = ""
   if (lang.toString().toLowerCase() === "eng") {
      query = "SELECT recipe_id, name_en as name, summary_en as summary FROM recipe"
   } else {
      query = "SELECT recipe_id, name_ch as name, summary_ch as summary FROM recipe"
   }

    sql.query(query, (err, res) => {
        if (err) {
            console.log("error: ", err);
            result(err, null);
            return;
        }

        console.log ("Recipe: ", res);
        result(null, res);
    });
};
module.exports = recipes;