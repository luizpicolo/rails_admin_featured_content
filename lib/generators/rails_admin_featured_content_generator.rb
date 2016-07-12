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

  def create_uploader_featured_content_image_model
    template "featured_content_image_uploader.rb", "app/uploaders/featured_content_image_uploader.rb"
  end

  def create_rails_admin_config_in_initializer
    template "rails_admin_featured_content.rb", "config/initializers/rails_admin_featured_content.rb"
  end

  def create_migrations
    migration_template "create_featured_content_migration.rb", File.join('db/migrate', "create_featured_contents.rb")
    migration_template "create_featured_content_images_migration.rb", File.join('db/migrate', "create_featured_content_images.rb")
  end
end
