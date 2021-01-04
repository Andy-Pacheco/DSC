const conexion = require ('../config/conexion');

class ControladorUser{
       async getUser(req, res){
              await conexion.query(`SELECT * FROM user`, (err, result)=>{
                     if (err) throw err;
                     res.json(result);
              })
       }
       createUser(req, res){}
       deleteUser(req, res){}
       editUser(req, res){}

}

module.exports = new ControladorUser();