require File.expand_path('../helpers/generator', __FILE__) 

namespace :documents do
  desc "Parses markdown documents and migrates to the database"
  task generate: :environment do
    include Generator::Migrator, Generator::Parser
    generate_document_structure
    migrate_document_structure
  end

  namespace :versions do
    task remove_v_slug: :environment do
      Version.all.each { |version| version.slug = version.slug.gsub(/v/, '') }
    end
  end
end

