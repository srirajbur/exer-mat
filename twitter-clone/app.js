const express = require('express');
const app = express();
const port = process.env.PORT || 5000;
const passport = require('passport');

//Config
require('dotenv').config();
require('./config/db');

//Middleware
app.use(passport.initialize());
require('./config/passport')(passport);
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

//Router
const users = require('./routes/api/users');
const tweets = require('./routes/api/tweets');

app.use('/api/users', users);
app.use('/api/tweets', tweets);

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
