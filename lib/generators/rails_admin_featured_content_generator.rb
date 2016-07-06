require 'rails/generators'

class RailsAdminFeaturedContentGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  def self.source_root
    @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates/'))
  end

  def self.next_migration_number(*)
    unless @migration
      @migration = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
    else
      @migration += 1
    end
    @migration.to_s
  end

  def create_migrations
    migration_template "create_featured_content_migration.rb", File.join('db/migrate', "create_featured_contents.rb")
  end
end
