require "fileutils"

module Scripts
  class ProcessModelSQL
    cattr_accessor :registry_sql_data_file
    
    def initialize
    end
    
    def run
      string = ""
      
      sql_data_file = File.open(registry_sql_data_file, "r")
      string = sql_data_file.read
      sql_data_file.close
      
      string.split("\n").reverse.each do |input|
        values = input.strip.split(',')
        attrs = {
          :model_id => values[0].gsub("(", "").strip,
          :name => values[1].strip.gsub("'", ""),
          :number => values[2].strip.gsub("'", ""),
          :production_begin => values[3].strip.gsub("'", ""),
          :production_end => values[4].strip.gsub("'", ""),
          :code => values[5].strip,
          :total_production_count => values[6].strip,
          :cylinder_count => values[7].strip,
          :displacement => values[8].strip,
          :drive => values[9].strip.gsub(/[();']/, "")
        }
        
        p Model.create!(attrs)
      end
    end
    
  end
end