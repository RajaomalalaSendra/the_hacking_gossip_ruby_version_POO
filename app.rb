require "json"
require "csv"

$:.unshift File.expand_path("./../lib", __FILE__) 
require "router"

app = Router.new.perform
app