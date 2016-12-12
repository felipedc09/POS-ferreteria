var express = require('express');
var router = express.Router();
var comprasCtr = require('../Controllers/POS/comprasController.js');

router.get('/', function(req, res, next) {
  if (!req.session.username) {
    res.redirect("/login");
  }
  res.render('POS/POS', { layout: 'POS/layoutPOS', title: 'Compras', user : req.session.username});
});
router.get('/orden', comprasCtr.createOrdenCompra);
// router.get('/factura', comprasCtr.getAllOrdenCompra);



module.exports = router;
