const conexion = require ('../config/conexion');

class ControladorEnemy{
       async getEnemy(req, res){
              await conexion.query(`SELECT * FROM enemies`, (err, result)=>{
                     if (err) throw err;
                     res.json(result);
              })
       }
       createEnemy(req, res){}
       deleteEnemy(req, res){}
       editEnemy(req, res){}

}

module.exports = new ControladorEnemy();