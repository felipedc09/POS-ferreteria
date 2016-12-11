var express = require('express');
var router = express.Router();
var users = require('../Controllers/users.js');

/* GET users listing. */
// router.get('/', function(req, res, next) {
//   res.render('index', { title: users.findAll });
// });
router.get('/', users.findAll);


module.exports = router;
