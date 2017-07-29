require 'smarter_csv'

class Ipgod203Importer
  def self.run
    filename = "data/ipgod203.csv"
    model_class = TradeMarksTradeMarkInformation
    model_class.delete_all
    options = {chunk_size: 20_000}

    SmarterCSV.process(filename, options) do |chunk|
      ActiveRecord::Base.transaction do
        model_objects = []
        chunk.each do |data_hash|
          data_hash[:ir_number_notify_date] = data_hash.delete(:if_number_notify_date) { |key| fail "Couldn't find #{key.inspect} in #{data_hash.inspect}" }
          model_objects << model_class.new( data_hash )
        end
        model_class.import model_objects
      end
    end
  end
end
