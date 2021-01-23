const recipe = require("../models/singleRecipe.model");

exports.findOne = (req, res) => {
   recipe.getOne(req.params.id, req.params.lang, (err, data) => {
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

exports.findIngredients = (req, res) => {
   recipe.getIngredients(req.params.id, req.params.lang, (err, data) => {
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

exports.findSteps = (req, res) => {
   recipe.getSteps(req.params.id, req.params.lang, (err, data) => {
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