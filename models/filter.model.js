const sql = require("./db");

const filter = function (filter) {
   this.recipe_id = filter.recipe_id;
   this.name_ch = filter.name_ch;
   this.name_en = filter.name_en;
   this.summary_en = filter.summary_en;
   this.summary_ch = filter.summary_ch;
};

filter.getFiltered = (method_id, season_id, main_id, lang, result) => {
   let query = ""
   if (method_id === '*') {
      method_id="%"
   }

   if (season_id === '*') {
      season_id="%"
   }

   if (main_id === '*') {
      main_id="%"
   }

   if (lang.toString().toLowerCase() === "eng") {
      query = `select r.recipe_id, r.name_en as name, r.summary_en as summary, 1 as visible
      from recipe r
      join recipe_season rs on (r.recipe_id = rs.recipe_id)
      join seasons s on (rs.season_id = s.season_id)
      join recipe_main rm on (r.recipe_id = rm.recipe_id)
      join main i on (rm.main_id = i.main_id)
      join method m on (r.method_id = m.method_id)
      where m.method_id like '${method_id}'
      and s.season_id like '${season_id}'
      and i.main_id like '${main_id}'
      order by r.sort_order;`
   } else {
      query = `select r.recipe_id, r.name_ch as name, r.summary_ch as summary, 1 as visible
      from recipe r
      join recipe_season rs on (r.recipe_id = rs.recipe_id)
      join seasons s on (rs.season_id = s.season_id)
      join recipe_main rm on (r.recipe_id = rm.recipe_id)
      join main i on (rm.main_id = i.main_id)
      join method m on (r.method_id = m.method_id)
      where m.method_id like '${method_id}'
      and s.season_id like '${season_id}'
      and i.main_id like '${main_id}'
      order by r.sort_order;`
   }

   sql.query(query, (err, res) => {
      if (err) {
         console.log("error: ", err);
         result(err, null);
         return;
      }

      if (res.length) {
         console.log("Filtered Results: ", res);
         result(null, res);
         return;
      }

      // no recipe with such id
      result({ name: 'not_found' }, null)
   });
};

module.exports = filter;