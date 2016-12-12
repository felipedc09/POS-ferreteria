var express = require('express');
var router = express.Router();
var productosCtr = require('../Controllers/POS/productosController.js');

router.get('/', function (req, res, next) {
  res.render('index', { title: 'Productos' });
});
router.get('/inventario', function (req, res, next) {
  if (!req.session.username) {
    res.redirect("/login");
  }
  res.render('POS/POS', { layout: 'POS/layoutPOS', title: 'Productos', user: req.session.username });
});
router.get('/all', productosCtr.findAll);
router.post('/crear', productosCtr.findAll);



module.exports = router;