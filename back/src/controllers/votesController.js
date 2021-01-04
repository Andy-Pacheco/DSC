const conexion = require ('../config/conexion');

class ControladorVotes{
       async getVotes(req, res){
              await conexion.query(`SELECT * FROM vote`, (err, result)=>{
                     if (err) throw err;
                     res.json(result);
              })
       }
       createVotes(req, res){}
       deleteVotes(req, res){}
       editVotes(req, res){}

}

module.exports = new ControladorVotes();