require 'rubygems'
require 'watchr'

all_rb = ['index.html.erb', 'products.json'].join('|')
script = Watchr::Script.new
script.watch( all_rb ) { |file| system("rake") }
controller = Watchr::Controller.new(script, Watchr.handler.new)
controller.run