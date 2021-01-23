# Soupbox API
Provides API methods for soupBox application

### Routes
* General syntax: `app.METHOD(PATH, HANDLER)`
   * If route matches path on server, the handler function is executed
      * Handler functions are located under `Controllers`

### Controllers
* Callback function called if route matches
   * Additional preferences (ie: language) are sent as a part of the `req` parameter 
   * `res` parameter sends information back to client
* Calls respective function located under `Models`

### Models
* Runs queries based on function call from `Controllers`
   * Returns either the desired data or error message

### Queries
* Database schema