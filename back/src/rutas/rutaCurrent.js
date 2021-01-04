const express = require('express');
const ruta = express.Router();
const ControladorCurrent = require('../controllers/currentController');

ruta.get('/', ControladorCurrent.getCurrent);
ruta.post('/', ControladorCurrent.createCurrent);
ruta.put('/', ControladorCurrent.editCurrent);
ruta.delete('/', ControladorCurrent.deleteCurrent);

module.exports = ruta;