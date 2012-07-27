#! /usr/bin/env node_modules/coffee-script/bin/coffee
# author: takano32 <tak@no32 dot tk>
# vim: noet sts=4:ts=4:sw=4
#

cluster = require 'cluster'
app = require './app'

(cluster app).
	use(cluster.logger 'logs').
	use(cluster.stats()).
	use(cluster.pidfiles 'pids').
	use(cluster.cli()).
	use(cluster.repl(8888)).
	listen 3000

