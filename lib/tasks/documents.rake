require File.expand_path('../helpers/generator', __FILE__) 

namespace :documents do
  desc "Parses markdown documents and migrates to the database"
  task generate: :environment do
    include Generator::Parser
    include Generator::Migrator
    
    generate_document_hash
    migrate_document_structure
  end
end

