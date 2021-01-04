const conexion = require ('../config/conexion');

class ControladorAdmin{
       async getAdmin(req, res){
              await conexion.query(`SELECT * FROM user WHERE type = 'admin' OR type = 'prod'`, (err, result)=>{
                     if (err) throw err;
                     res.json(result);
              })
       }
       async createAdmin(req, res){}
       async deleteAdmin(req, res){}
       async editAdmin(req, res){}

}

module.exports = new ControladorAdmin();