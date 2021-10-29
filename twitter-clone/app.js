const express = require('express');
const app = express();
const port = process.env.PORT || 5000;
require('dotenv').config();

//Config
require('./config/db');

//Middleware
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

//Router
const users = require('./routes/api/users');
const tweets = require('./routes/api/tweets');

app.use('/api/users', users);
app.use('/api/tweets', tweets);

//
app.get('/', (req, res) => {
  res.send('Hello World');
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
