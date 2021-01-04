const conexion = require ('../config/conexion');

class ControladorEdition{
       async getEdition(req, res){
              await conexion.query(`SELECT * FROM edition`, (err, result)=>{
                     if (err) throw err;
                     res.json(result);
              })
       }
       createEdition(req, res){}
       deleteEdition(req, res){}
       editEdition(req, res){}

}

module.exports = new ControladorEdition();