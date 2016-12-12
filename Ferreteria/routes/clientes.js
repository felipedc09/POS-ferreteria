var express = require('express');
var router = express.Router();
var clientesCtr = require('../Controllers/POS/clientesController.js');

router.get('/', function(req, res, next) {
  if (!req.session.username) {
    res.redirect("/login");
  }
  res.render('POS/POS', { layout: 'POS/layoutPOS', title: 'Clientes', user : req.session.username});
});
router.post('/', clientesCtr.getByName);
router.get('/', clientesCtr.findAll);



module.exports = router;