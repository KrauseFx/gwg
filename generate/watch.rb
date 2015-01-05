require 'rubygems'
require 'watchr'

all_rb = Dir['index.html.erb'].join('|')
script = Watchr::Script.new
script.watch( all_rb ) { |file| system("rake") }
controller = Watchr::Controller.new(script, Watchr.handler.new)
controller.run