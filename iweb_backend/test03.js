//使用node.js创建一个最简单的动态web服务器

const http = require('http')

let server = http.createServer(function(req,res){
	res.end('Welecome to My Stie')
})

server.listen(8080)