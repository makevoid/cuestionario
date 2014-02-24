path = File.expand_path "../", __FILE__
require "#{path}/config/env"

class Cuestionario < Sinatra::Base

  @@path = PATH

  require "#{@@path}/lib/mail_exceptions"

  @@pass = (File.read File.expand_path "~/.password").strip.gsub(/33/, '')
  use Rack::MailExceptions do |mail|
    mail.to 'makevoid@gmail.com'
    mail.subject '[ERROR] %s'
    mail.smtp(
      server:         'smtp.gmail.com',
      domain:         'gmail.com',
      port:           587,
      authentication: 'plain',
      user_name:      'm4kevoid@gmail.com',
      password:       @@pass
    )
  end

  get "/" do
    haml :index
  end

  #FIELDS = [:nombre, :edad, :sexo, :lugar, :municipio, :provincia, :pais, :profesion, :instruccion, :otra_istruccion, :collaborador_beneficiario, :project_name, :partners, "2c", :activities, "3a", :politics, "3c", :pobolacion_beneficiaria, "3e", "3f", :organizacion, "4b", :puestos, "4d", :apreciacion_efectos, "5b", :efectos, "6b", "6c", "6d", :servicios_prestados, :servicios, "8b"]

  post "/submit" do
    Answers.instance << params
    Answers.instance.write
    haml :success
  end

  get "/exception" do
    raise "testing exception"
  end


  get "/results" do
    File.read "#{@@path}/db/causes.json"
  end
end