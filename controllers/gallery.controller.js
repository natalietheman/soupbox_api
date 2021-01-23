const gallery = require("../models/gallery.model");

exports.findAll = (req, res) => {
   gallery.getAll(req.params.lang, (err, data) => {
       if (err) {
           res.status(500).send({
               message: err.message || "error occurred :("
           });
       } else {
           res.send(data)
       }
   });
};