require 'rake'

namespace :import do

  desc "Import ipgod102"
  task ipgod102: :environment do
    Ipgod102Importer.run
  end

  desc "Import ipgod107"
  task ipgod107: :environment do
    Ipgod107Importer.run
  end

  desc "Import ipgod202"
  task ipgod202: :environment do
    Ipgod202Importer.run
  end

  desc "Import ipgod202"
  task ipgod203: :environment do
    Ipgod203Importer.run
  end
end
