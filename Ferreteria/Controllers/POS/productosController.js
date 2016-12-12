var oracledb = require('oracledb');
var dbConfig = require('../../dbConfig.js');
var generalCtr = require('../generalController.js');


exports.findAll =  function (req, res) {
    generalCtr.getAll(req, res, "SELECT * FROM CATALOGOPRODUCTO", function(productos){
        res.send(JSON.stringify(productos));
    });
}

// function getProductos(req, res, callback) {
//     oracledb.getConnection(dbConfig, function (err, connection) {
//         if (err) {
//             // Error connecting to DB
//             res.set('Content-Type', 'application/json');
//             res.status(500).send(JSON.stringify({
//                 status: 500,
//                 message: "Error connecting to DB",
//                 detailed_message: err.message
//             }));
//             return;
//         }

//         connection.execute("SELECT * FROM CATALOGOPRODUCTO", {}, {
//             outFormat: oracledb.OBJECT // Return the result as Object
//         }, function (err, result) {
//             if (err) {
//                 res.set('Content-Type', 'application/json');
//                 res.status(500).send(JSON.stringify({
//                     status: 500,
//                     message: "Error getting the user profile",
//                     detailed_message: err.message
//                 }));
//             } else {
//                 // if (!req.session.username) {
//                 //     res.redirect("login");
//                 // }
//                 callback(null, JSON.stringify(result.rows));
//                 // res.render('POS/POS', { layout: 'POS/layoutPOS', title: 'Productos', user : req.session.username});
//             }
//             // Release the connection
//             connection.release(
//                 function (err) {
//                     if (err) {
//                         console.error(err.message);
//                     } else {
//                         console.log("GET /user_profiles : Connection released");
//                     }
//                 });
//         });
//     });
//     // oracledb.getConnection(dbConfig, function (err, connection) {
//     //     if (err) {
//     //         // Error connecting to DB
//     //         console.log('Error: '+err)
//     //         return;
//     //     }

//     //     connection.execute("SELECT * FROM CATALOGOPRODUCTO", {}, {
//     //         outFormat: oracledb.OBJECT // Return the result as Object
//     //     }, function (err, result) {
//     //         if (err) {
//     //             console.log('Error: '+err)
//     //         } else {
//     //             callback(JSON.stringify(result.rows));
//     //         }
//     //         // Release the connection
//     //         connection.release(
//     //             function (err) {
//     //                 if (err) {
//     //                     console.error(err.message);
//     //                 } else {
//     //                     console.log("GET /user_profiles : Connection released");
//     //                 }
//     //             });
//     //     });
//     // });
// }
exports.getByName = function (req, res) {
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

        connection.execute("SELECT * FROM EMPLEADO WHERE IDENTIFICACION = :IDENTIFICACION", [req.params.IDENTIFICACION], {
            outFormat: oracledb.OBJECT // Return the result as Object
        }, function (err, result) {
            if (err || result.rows.length < 1) {
                res.set('Content-Type', 'application/json');
                var status = err ? 500 : 404;
                res.status(status).send(JSON.stringify({
                    status: status,
                    message: err ? "Error getting the user profile" : "User doesn't exist",
                    detailed_message: err ? err.message : ""
                }));
            } else {
                res.render('users', { title: 'Usuarios', data: result.rows[0] });
            }
            // Release the connection
            connection.release(
                function (err) {
                    if (err) {
                        console.error(err.message);
                    } else {
                        console.log("GET /user_profiles/" + req.params.USER_NAME + " : Connection released");
                    }
                });
        });
    });
}

