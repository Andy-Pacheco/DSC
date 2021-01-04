const express = require('express');
const ruta = express.Router();
const ControladorEnemy = require('../controllers/enemiesController');

ruta.get('/', ControladorEnemy.getEnemy);
ruta.post('/', ControladorEnemy.createEnemy);
ruta.put('/', ControladorEnemy.editEnemy);
ruta.delete('/', ControladorEnemy.deleteEnemy);

module.exports = ruta;