const express = require("express");

// create an instance of the express module
const app = express();

app.use(express.json());
app.use(express.urlencoded({extended: true})); 

// parse header to allow CORS
app.use(function(req, res, next) {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
    next();
});

// pass express object to router module
const galleryRoute = require("./routes/gallery.routes");
const singleRecipeRoute = require("./routes/singleRecipe.routes");
const mainRoute = require("./routes/main.routes");
const methodRoute = require("./routes/method.routes");
const seasonsRoute = require("./routes/seasons.routes");
const filterRoute = require("./routes/filter.routes");
const allRecipesRoute = require("./routes/allRecipes.routes");

galleryRoute(app);
singleRecipeRoute(app);
mainRoute(app);
methodRoute(app);
seasonsRoute(app);
filterRoute(app);
allRecipesRoute(app);

const port = process.env.port || 4600;

app.listen(port, () => {
    console.log(`Server is running on port ${port}...`);
});
