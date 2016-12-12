var express = require('express');
var router = express.Router();
var usuariosCtr = require('../Controllers/usuariosController.js');

/* GET usuarios listing. */
// router.get('/', function(req, res, next) {
//   res.render('index', { title: usuarios.findAll });
// });
router.get('/', usuariosCtr.findAll);
router.get('/:IDENTIFICACION', usuariosCtr.getByName);
router.post('/', usuariosCtr.findAll);



module.exports = router;
