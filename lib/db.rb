class DB

  attr_accessor :collection

  def read
    @collection = begin
      JSON.parse File.read("#{PATH}/db/#{@db_name}.json")
    rescue Errno::ENOENT # file doesn't exists
      []
    end
  end

  def all
    @collection
  end

  def write
    File.open("#{PATH}/db/#{@db_name}.json", "w") do |file|
      file.write @collection.to_json
    end
    true
  end

  def <<(entry)
    @collection << entry
  end

end


class Answers < DB

  def self.instance
    @@instance ||= new
  end

  def initialize
    @db_name = "causes"
    read
  end

end

# Answers