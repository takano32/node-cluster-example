#! /usr/bin/env node_modules/coffee-script/bin/coffee
# author: takano32 <tak@no32 dot tk>
# vim: noet sts=4:ts=4:sw=4
#


http = require 'http'

module.exports = http.createServer (req, res) ->
	console.log '%s %s', req.method, req.url
	body = 'Hello World'
	headers =
		'Content-Length': body.length
	res.writeHead 200, headers
	res.end body


