require 'simple_form'
require 'owlcarousel-rails'

module RailsAdminFeaturedContent
  class Engine < ::Rails::Engine
    isolate_namespace RailsAdminFeaturedContent

    initializer 'rails_admin_featured_content.load_static_assets' do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/vendor"
      app.config.assets.precompile += %w(
        rails_admin/featured_content.js
        rails_admin/featured_content.css
      )
    end

    config.generators do |g|
      g.test_framework :rspec, :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end
  end
end
