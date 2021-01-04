const express = require('express');
const ruta = express.Router();
const ControladorCountry = require('../controllers/countryController');

ruta.get('/', ControladorCountry.getCountry);
ruta.post('/', ControladorCountry.createCountry);
ruta.put('/', ControladorCountry.editCountry);
ruta.delete('/', ControladorCountry.deleteCountry);

module.exports = ruta;