const sql = require("./db");

// Constructor
const seasons = function(seasons) {
   this.season_id = seasons.season_id;
   this.name_en = seasons.name_en;
   this.name_ch = seasons.name_ch;
};

seasons.getAll = (lang, result) => {
   let query = ""
   if (lang.toString().toLowerCase() === "eng") {
      query = "select season_id, name_en as name FROM seasons order by sort_order"
   } else {
      query = "select season_id, name_ch as name FROM seasons order by sort_order"
   }

    sql.query(query, (err, res) => {
        if (err) {
            console.log("error: ", err);
            result(err, null);
            return;
        }

        console.log ("Season: ", res);
        result(null, res);
    });
};
module.exports = seasons;