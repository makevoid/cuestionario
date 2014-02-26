path = File.expand_path "../", __FILE__
require "#{path}/config/env"

class Cuestionario < Sinatra::Base

  @@path = PATH

  require "#{@@path}/lib/mail_exceptions"

  if ENV["RACK_ENV"] == "production"
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
  end

  get "/" do
    haml :index
  end

  post "/submit" do
    Answers.instance << params
    Answers.instance.write
    haml :success
  end

  get "/exception" do
    raise "testing exception"
  end

  def read_results
    results = File.read "#{@@path}/db/causes.json"
    JSON.parse results
  end

  require 'csv'
  get "/results.csv" do
    content_type :csv
    results = read_results
    CSV.generate(col_sep: ",") do |csv|
      csv << results[0].keys
      for result in results
        csv << result.values
      end
    end
  end



  FIELDS = [:nombre, :edad, :sexo, :lugar, :municipio, :provincia, :pais, :profesion, :instruccion, :otra_istruccion, :collaborador_beneficiario, :project_name, :partners, "2c", :activities, "3a", :politics, "3c", :pobolacion_beneficiaria, "3e", "3f", :organizacion, "4b", :puestos, "4d", :apreciacion_efectos, "5b", :efectos, "6b", "6c", "6d", :servicios_prestados, :servicios, "8b", :start_time]

  get "/results.xlsx" do
    results = read_results

    Axlsx::Package.new do |p|
      wb = p.workbook
      wb.add_worksheet(:name => "Cuestionario results") do |sheet|
        sheet.add_row FIELDS
        for result in results
          res = FIELDS.map{ |field| result[field.to_s] }
          sheet.add_row res
          # sheet.add_row result.values
        end
      end
      p.serialize 'db/results.xlsx'
    end

    send_file 'db/results.xlsx'
  end

  get "/results" do
    send_file "#{@@path}/db/causes.json"
  end

  get "/stats" do
    content_type :json
    results = read_results
    { count: results.size, last: results.last["start_time"] }.to_json
  end
end