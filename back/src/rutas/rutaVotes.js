const express = require('express');
const ruta = express.Router();
const ControladorVotes = require('../controllers/votesController');

ruta.get('/', ControladorVotes.getVotes);
ruta.post('/', ControladorVotes.createVotes);
ruta.put('/', ControladorVotes.editVotes);
ruta.delete('/', ControladorVotes.deleteVotes);

module.exports = ruta;