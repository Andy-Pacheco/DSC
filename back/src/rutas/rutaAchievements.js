const express = require('express');
const ruta = express.Router();
const ControladorAchievement = require('../controllers/achievementsController');

ruta.get('/', ControladorAchievement.getAchievement);
ruta.post('/', ControladorAchievement.createAchievement);
ruta.put('/', ControladorAchievement.editAchievement);
ruta.delete('/', ControladorAchievement.deleteAchievement);

module.exports = ruta;