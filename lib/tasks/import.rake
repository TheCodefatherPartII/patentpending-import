require 'rake'

namespace :import do

  desc "Import ipgod107"
  task ipgod107: :environment do
    Ipgod107Importer.run
  end
end
