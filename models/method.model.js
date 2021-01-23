const sql = require("./db");

// Constructor
const method = function(method) {
   this.method_id = method.method_id;
   this.name_en = method.name_en;
   this.name_ch = method.name_ch;
};

method.getAll = (lang, result) => {
   let query = ""
   if (lang.toString().toLowerCase() === "eng") {
      query = "select method_id, name_en as name FROM method order by sort_order"
   } else {
      query = "select method_id, name_ch as name FROM method order by sort_order"
   }

    sql.query(query, (err, res) => {
        if (err) {
            console.log("error: ", err);
            result(err, null);
            return;
        }

        console.log ("Method: ", res);
        result(null, res);
    });
};
module.exports = method;