const express = require('express');
const ruta = express.Router();
const ControladorEdition = require('../controllers/editionController');

ruta.get('/', ControladorEdition.getEdition);
ruta.post('/', ControladorEdition.createEdition);
ruta.put('/', ControladorEdition.editEdition);
ruta.delete('/', ControladorEdition.deleteEdition);

module.exports = ruta;