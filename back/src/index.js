var express = require('express')
var app = express();
var bodyParser = require('body-parser');
var cors = require('cors');
var morgan = require('morgan');
var path = require('path');


// configuro los parámetros de mi servidor. 
app.set('puerto', process.env.PORT || 1221);
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));
app.use(cors());
app.use(morgan('dev'));
app.use(express.static(path.join(__dirname, 'public')))


// indico las rutas que implementare en mi servdiro. 

const rutaUser = require('./rutas/rutaUser');
const rutaAdmin = require('./rutas/rutaAdmin');
const rutaSong = require('./rutas/rutaSong');
const rutaEnemy = require('./rutas/rutaEnemy');
const rutaVotes = require('./rutas/rutaVotes');
const rutaEditions = require('./rutas/rutaEditions');
const rutaCountries = require('./rutas/rutaCountries');
const rutaAchievements = require('./rutas/rutaAchievements');
const rutaCurrent = require('./rutas/rutaCurrent');


app.use('/api/user', rutaUser);
app.use('/api/admin', rutaAdmin);
app.use('/api/song', rutaSong);
app.use('/api/enemy', rutaEnemy);
app.use('/api/votes', rutaVotes);
app.use('/api/editions', rutaEditions);
app.use('/api/countries', rutaCountries);
app.use('/api/achievements', rutaAchievements);
app.use('/api/current', rutaCurrent);


// lanzaré el servidor.
app.listen(app.get('puerto'), ()=> {
    console.log(`Servidor lanzado en puerto ${app.get('puerto')}`);
}); 