const express = require('express');
const ruta = express.Router();
const ControladorAdmin = require('../controllers/adminController');

ruta.get('/', ControladorAdmin.getAdmin);
ruta.post('/', ControladorAdmin.createAdmin);
ruta.put('/', ControladorAdmin.editAdmin);
ruta.delete('/', ControladorAdmin.deleteAdmin);

module.exports = ruta;