require File.expand_path('../helpers/generator', __FILE__) 

namespace :documents do
  desc "Parses markdown documents and migrates to the database"
  task generate: :environment do
    include Generator::Migrator, Generator::Parser
    generate_document_structure
    migrate_document_structure
  end

  desc "Sets all slugs to nil to regenerate"
  task reset_slugs: :environment do
    [Version, Section, Document].each {|klass| klass.all.each {|record| record.slug = nil; record.save}}
  end
end

