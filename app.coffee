



http = require 'http'

module.exports = http.createServer (req, res) ->
	console.log '%s %s', req.method, req.url
	body = 'Hello World'
	headers =
		'Content-Length': body.length
	res.writeHead 200, headers
	res.end body


