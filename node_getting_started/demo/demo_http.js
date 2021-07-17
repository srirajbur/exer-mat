const http = require('http')
const url = require('url') //splits up a web address into readable parts
const fs = require('fs') // File stytem allows you to work with files in your computer. CRUD and many more.

//req represents the request from the client
http.createServer(function(req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'})
  const q = url.parse(req.url, true).query
  const txt = q.year + " " + q.month
  res.write(txt)
  res.end()
}).listen(8080)