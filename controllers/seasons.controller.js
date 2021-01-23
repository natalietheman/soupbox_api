const seasons = require("../models/seasons.model");

exports.findAll = (req, res) => {
   seasons.getAll(req.params.lang, (err, data) => {
      if (err) {
          res.status(500).send({
              message: err.message || "error occurred :("
          });
      } else {
          res.send(data)
      }
  });
};