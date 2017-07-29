require 'smarter_csv'

class Ipgod202Importer
  def self.run
    filename = "data/ipgod202.csv"
    model_class = TradeMarksApplicantInformation
    model_class.delete_all
    options = {chunk_size: 20_000}

    SmarterCSV.process(filename, options) do |chunk|
      ActiveRecord::Base.transaction do
        model_objects = []
        chunk.each do |data_hash|
          model_objects << model_class.new( data_hash )
        end
        model_class.import model_objects
      end
    end
  end
end
