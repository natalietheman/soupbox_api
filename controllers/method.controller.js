const methods = require("../models/method.model");

exports.findAll = (req, res) => {
   methods.getAll(req.params.lang, (err, data) => {
      if (err) {
          res.status(500).send({
              message: err.message || "error occurred :("
          });
      } else {
          res.send(data)
      }
  });
};