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
end
