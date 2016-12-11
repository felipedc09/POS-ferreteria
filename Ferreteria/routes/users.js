var express = require('express');
var router = express.Router();
var users = require('../Controllers/users.js');

/* GET users listing. */
<<<<<<< HEAD
router.route('/')
 .get(users.findAll);
=======
// router.get('/', function(req, res, next) {
//   res.render('index', { title: users.findAll });
// });
router.get('/', users.findAll);
>>>>>>> 27a01c5a994f97738c2aee97e385a19a4881b706


module.exports = router;
