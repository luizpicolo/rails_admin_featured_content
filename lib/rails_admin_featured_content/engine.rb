require 'simple_form'

module RailsAdminFeaturedContent
  class Engine < ::Rails::Engine
    isolate_namespace RailsAdminFeaturedContent

    initializer 'rails_admin_featured_content.load_static_assets' do |app|
      app.config.assets.precompile += %w(
        rails_admin/featured_content.js
        rails_admin/featured_content.css
      )
    end
  end
end
