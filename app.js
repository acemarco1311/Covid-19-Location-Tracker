var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var cors = require('cors');
var mysql = require('mysql');
var session = require('express-session');
// const haversine = require("haversine-distance");
const {OAuth2Client} = require('google-auth-library');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
// var session = require('express-session');
var dbConnectionPool = mysql.createPool({
    host: 'localhost',
    database: 'Project',
});

var app = express();

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(cors());

app.use(function(req, res, next){
   req.pool = dbConnectionPool;
   next();
});

app.use(session({
    secret: 'a string of your choice',
    resave: false,
    saveUninitialized: true,
    cookie: {secure: false}
}));

app.use(express.static(path.join(__dirname, 'public')));



app.use('/', indexRouter);
app.use('/users', usersRouter);



module.exports = app;
