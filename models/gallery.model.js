const sql = require("./db");

// Constructor
const gallery = function (gallery) {
   this.recipe_id = gallery.recipe_id;
   this.name_ch = gallery.name_ch;
   this.name_en = gallery.name_en;
   this.method_id = gallery.method_id;
   this.servings = gallery.servings;
   this.summary_ch = gallery.summary_ch;
   this.summary_en = gallery.summary_en;
   this.photo_url = gallery.photo_url;
   this.height = gallery.height;
   this.width = gallery.width;
   this.photo_sort_order = gallery.photo_sort_order;
   this.sort_order = gallery.sort_order;
};

gallery.getAll = (lang, result) => {
   let query = ""
   if (lang.toString().toLowerCase() === "eng") {
      query = "select recipe_id, name_en as name, photo_url, width, height from recipe order by photo_sort_order"
   } else {
      query = "select recipe_id, name_ch as name, photo_url, width, height from recipe order by photo_sort_order"
   }

   sql.query(query, (err, res) => {
      if (err) {
         console.log("error: ", err);
         result(err, null);
         return;
      }

      console.log("Photo: ", res);
      result(null, res);
   });
};

module.exports = gallery;