const recipe_steps = require("../models/recipe_steps.model");

exports.findOne = (req, res) => {
   recipe_steps.getOne(req.params.id, req.params.lang, (err, data) => {
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