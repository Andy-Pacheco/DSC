const express = require('express');
const ruta = express.Router();
const ControladorUser = require('../controllers/userController');

ruta.get('/', ControladorUser.getUser);
ruta.post('/', ControladorUser.createUser);
ruta.put('/', ControladorUser.editUser);
ruta.delete('/', ControladorUser.deleteUser);

module.exports = ruta;