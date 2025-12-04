require "webrick"
server = WEBrick::HTTPServer.new(:Port => 4000)
server.mount_proc("/") { |req, res| res.body = "hello world" }
trap("INT") { server.shutdown }
server.start
