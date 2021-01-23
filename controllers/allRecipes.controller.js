const recipes = require("../models/allRecipes.model");

exports.findAll = (req, res) => {
    recipes.getAll(req.params.lang, (err, data) => {
        if (err) {
            res.status(500).send({
                message: err.message || "error occurred :("
            });
        } else {
            res.send(data)
        }
    });
};