var express = require('express');
var router = express.Router();
var proveedoresCtr = require('../Controllers/POS/proveedoresController.js');

router.get('/', function(req, res, next) {
  if (!req.session.username) {
    res.redirect("/login");
  }
  res.render('POS/POS', { layout: 'POS/layoutPOS', title: 'Proveedores', user : req.session.username});
});
router.get('/all', proveedoresCtr.findAll);
router.post('/crear', proveedoresCtr.findAll);



module.exports = router;
