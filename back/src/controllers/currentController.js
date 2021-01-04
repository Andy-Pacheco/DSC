const conexion = require ('../config/conexion');

class ControladorCurrent{
       async getCurrent(req, res){
              await conexion.query(`SELECT * FROM current_edition, current_vote`, (err, result)=>{
                     if (err) throw err;
                     res.json(result);
              })
       }
       createCurrent(req, res){}
       deleteCurrent(req, res){}
       editCurrent(req, res){}

}

module.exports = new ControladorCurrent();