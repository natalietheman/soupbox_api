const filter = require("../models/filter.model");

exports.findFiltered = (req, res) => {
   filter.getFiltered(req.params.method, req.params.season, req.params.main, req.params.lang, (err, data) => {
      if (err) {
         if (err.name === 'not_found') {
            res.status(404).send({
               message: `Recipe not found with id ${req.params.id}`
            });
         } else {
            res.status(500).send({
               message: `Error receiving recipe with id ${req.params.id}`
            });
         }
      } else
         res.send(data)
   });
};
