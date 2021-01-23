const sql = require("./db");

// Constructor
const main = function(main) {
   this.main_id = main.main_id;
   this.name_en = main.name_en;
   this.name_ch = main.name_ch;
};

main.getAll = (lang, result) => {
   let query = ""
   if (lang.toString().toLowerCase() === "eng") {
      query = "select main_id, name_en as name FROM main order by sort_order"
   } else {
      query = "select main_id, name_ch as name FROM main order by sort_order"
   }

    sql.query(query, (err, res) => {
        if (err) {
            console.log("error: ", err);
            result(err, null);
            return;
        }

        console.log ("Main Ingredients: ", res);
        result(null, res);
    });
};
module.exports = main;