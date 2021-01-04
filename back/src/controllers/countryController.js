const conexion = require ('../config/conexion');

class ControladorCountry{
       async getCountry(req, res){
              await conexion.query(`SELECT * FROM country`, (err, result)=>{
                     if (err) throw err;
                     res.json(result);
              })
       }
       createCountry(req, res){}
       deleteCountry(req, res){}
       editCountry(req, res){}

}

module.exports = new ControladorCountry();