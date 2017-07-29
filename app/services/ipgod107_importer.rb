require 'csv'

class Ipgod107Importer
  def self.run
    csv_text = File.read("data/n100_ipgod107.csv")
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
      PatentsIpAustraliaProcessInformation.create!(row.to_hash)
    end
  end
end
