const http = require('http')
const fs = require('fs')// File stytem allows you to work with files in your computer. CRUD and many more.

http.createServer(function(req, res) {
  fs.readFile('demofile1.html', function(err, data){
    res.writeHead(200, {'Content-Type': 'text/html'})
    res.write(data)
    return res.end()
  })
}).listen(8080)
