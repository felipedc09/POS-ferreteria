var oracledb = require('oracledb');
var dbConfig = require('../dbConfig.js');

exports.prueba = function (route){
    app.get(route, function(req, res){
  var data = {
        name: "Hbs",
    }
  res.render('index', data);
});
}

//GET - Return all registers
exports.findAll = function (req, res) {
    oracledb.getConnection(dbConfig, function (err, connection) {
        if (err) {
            // Error connecting to DB
            res.set('Content-Type', 'application/json');
            res.status(500).send(JSON.stringify({
                status: 500,
                message: "Error connecting to DB",
                detailed_message: err.message
            }));
            return;
        }

        connection.execute("SELECT * FROM cargo", {}, {
            outFormat: oracledb.OBJECT // Return the result as Object
        }, function (err, result) {
            if (err) {
                res.set('Content-Type', 'application/json');
                res.status(500).send(JSON.stringify({
                    status: 500,
                    message: "Error getting the user profile",
                    detailed_message: err.message
                }));
            } else {
                // res.contentType('application/json').status(200);
                res.render('users', { title : 'Usuario', data : result.rows[0] });
            }
            // Release the connection
            connection.release(
                function (err) {
                    if (err) {
                        console.error(err.message);
                    } else {
                        console.log("GET /user_profiles : Connection released");
                    }
                });
        });
    });
} 

    
