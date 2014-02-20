path = File.expand_path "../", __FILE__
require "#{path}/config/env"

class Cuestionario < Sinatra::Base

  get "/" do
    haml :index
  end

  post "/submit" do
    haml :success
  end

end