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


  helpers do
    include Haml::Helpers
    alias :write  :haml_concat
    alias :tag    :haml_tag

    def input_text(label, options)
      tag :input, options
    end

    def textarea(label, options)
      tag :textarea, options
    end

    def select(label, choices, options)
      tag :select, options do
        choices.each do |choice|
          tag :option do
            write choice
          end
        end
      end
    end

    def select_def(label, choices, sel_choice, options)
      tag :label do
        write label
        tag :select, options do
          choices.each do |choice|
            selected = true if choice == sel_choice
            tag :option, selected: selected do
              write choice
            end
          end
        end
      end
    end

    def input(label, options={}, options2={})
      tag :label do
        write label
        if options.is_a? Array
            select label, options, options2
        elsif options[:tag] == :area
          textarea label, options
        else
          input_text label, options
        end
      end
    end

    def self.str_format(str)
      str.split("\n").map{ |s| s.strip }
    end

    # import datas
    selects = eval(File.read "views/selects.rb")
    SELECTS = selects

    def selects
      SELECTS
    end

    require 'json'

    def strong_sel(name)
      "<strong class='#{name}'>#{SELECTS[name][0]}</strong>"
    end

    def strong_sel_group(name)
      "<strong class='#{name}'>...</strong>"
    end
  end

  get "/" do
    haml :index
  end

  get "/eurosolar" do
    haml :eurosolar
  end

  post "/submit" do
    Answers.instance << params
    Answers.instance.write
    haml :success
  end

  post "/eurosolar/submit" do
    EuroAnswers.instance << params
    EuroAnswers.instance.write
    haml :success_eurosolar
  end

  get "/exception" do
    raise "testing exception"
  end

  def read_results(name)
    results = File.read "#{@@path}/db/#{name}.json"
    JSON.parse results
  end

  def generate_csv(results)
    CSV.generate(col_sep: ",") do |csv|
      csv << results[0].keys
      for result in results
        csv << result.values
      end
    end
  end

  # deprecate both
  require 'csv'
  get "/results.csv" do
    content_type :csv
    results = read_results "causes"
    generate_csv results
  end

  require 'csv'
  get "/results/eurosolar.csv" do
    content_type :csv
    results = read_results "eurosolar"
    generate_csv results
  end


  FIELDS = [:nombre, :edad, :sexo, :lugar, :municipio, :provincia, :pais, :profesion, :instruccion, :otra_istruccion, :collaborador_beneficiario, :project_name, :partners, "2c", :activities, "3a", :politics, "3c", :pobolacion_beneficiaria, "3e", "3f", :organizacion, "4b", :puestos, "4d", :apreciacion_efectos, "5b", :efectos, "6b", "6c", "6d", :servicios_prestados, :servicios, "8b", :start_time]

  FIELDS_EUROSOLAR = [:pais, :department, :municipality, :nombre_comunidad, :nombre, :cargo, :pertinencia, :pertinencia_otro, :pertinencia_geo, :pertinencia_geo_otro, :pertinencia_operativa, :temas_trasversales, :temas_trasversales_otro, :sostenibilidad, :sostenibilidad_otro, :eficencia1, :eficencia1_otro, :eficencia2, :eficencia2_otro, :eficencia3, :eficencia3_otro, :eficencia4, :eficencia4_otro, :eficencia5, :eficencia5_otro, :eficacia, :eficacia_otro, :efectos1, :efectos1_otro, :efectos2, :efectos2_otro, :efectos3, :efectos3_otro, :efectos4, :efectos4_otro, :efectos5, :efectos5_otro, :efectos6, :efectos6_otro, :efectos7, :efectos7_otro, :efectos_salud1, :efectos_salud1_otro, :efectos_salud2, :efectos_salud2_otro, :efectos_salud3, :efectos_salud3_otro, :desarrollo1, :desarrollo1_otro, :desarrollo2, :desarrollo2_otro, :energeticos1, :energeticos1_otro, :energeticos2, :energeticos2_otro, :energeticos3, :energeticos3_otro, :impacto, :impacto_otro, :sost_inst, :sost_inst_otro, :sost_social1, :sost_social1_otro, :sost_social2, :sost_social3, :sost_social3_otro, :sost_tecn1, :sost_tecn1_otro, :sost_tecn2, :sost_tecn2_otro, :sost_tecn3, :sost_tecn3_otro, :sost_fin1, :sost_fin1_otro, :sost_fin2, :sost_fin2_otro, :sost_fin3, :sost_fin3_otro, :sost_amb1, :sost_amb1_otro, :sost_amb2, :sost_amb2_otro]


  # TODO: refactor like csv
  get "/results.xlsx" do
    results = read_results "causes"

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

  get "/results/eurosolar.xlsx" do
    results = read_results "eurosolar"

    Axlsx::Package.new do |p|
      wb = p.workbook
      wb.add_worksheet(:name => "Cuestionario Eurosolar results") do |sheet|
        sheet.add_row FIELDS_EUROSOLAR
        for result in results
          res = FIELDS_EUROSOLAR.map{ |field| result[field.to_s] }
          sheet.add_row res
          # sheet.add_row result.values
        end
      end
      p.serialize 'db/eurosolar.xlsx'
    end

    send_file 'db/eurosolar.xlsx'
  end

  get "/results" do
    send_file "#{@@path}/db/causes.json"
  end

  get "/stats" do
    content_type :json
    results = read_results "causes"
    results_euro = read_results "eurosolar"
    { count: results.size, last: results.last["start_time"], eurosolar: { count: results_euro.size, last: results_euro.last["start_time"] } }.to_json
  end

end