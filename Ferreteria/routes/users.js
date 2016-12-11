var express = require('express');
var router = express.Router();
var users = require('../Controllers/users.js');

/* GET users listing. */
router.route('/')
 .get(users.findAll);


module.exports = router;
