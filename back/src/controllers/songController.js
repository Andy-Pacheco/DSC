const conexion = require ('../config/conexion');

class ControladorSong{
       async getSong(req, res){
              await conexion.query(`SELECT * FROM song`, (err, result)=>{
                     if (err) throw err;
                     res.json(result);
              })
       }
       createSong(req, res){}
       deleteSong(req, res){}
       editSong(req, res){}

}

module.exports = new ControladorSong();