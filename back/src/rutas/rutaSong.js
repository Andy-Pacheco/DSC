const express = require('express');
const ruta = express.Router();
const ControladorSong = require('../controllers/songController');

ruta.get('/', ControladorSong.getSong);
ruta.post('/', ControladorSong.createSong);
ruta.put('/', ControladorSong.editSong);
ruta.delete('/', ControladorSong.deleteSong);

module.exports = ruta;