const conexion = require ('../config/conexion');

class ControladorAchievement{
       async getAchievement(req, res){
              await conexion.query(`SELECT * FROM achievements`, (err, result)=>{
                     if (err) throw err;
                     res.json(result);
              })
       }
       async createAchievement(req, res){}
       async deleteAchievement(req, res){}
       async editAchievement(req, res){}

}

module.exports = new ControladorAchievement();