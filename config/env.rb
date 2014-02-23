path = File.expand_path "../../", __FILE__
PATH = path

require "bundler/setup"
Bundler.require :default

require 'json'
require "#{path}/lib/db"