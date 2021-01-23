const main = require("../models/main.model");

exports.findAll = (req, res) => {
    main.getAll(req.params.lang, (err, data) => {
        if (err) {
            res.status(500).send({
                message: err.message || "error occurred :("
            });
        } else {
            res.send(data)
        }
    });
};