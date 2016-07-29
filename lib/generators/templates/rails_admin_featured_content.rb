RailsAdmin.config do |config|
  config.actions do
    featured_content do
      only ['RailsAdminFeaturedContent::FeaturedContent']
    end

    config.model 'RailsAdminFeaturedContent::FeaturedContent' do
      list do
        field :id
        field :title
        field :status
      end
      edit do
        field :title
      end
    end

    config.model 'RailsAdminFeaturedContent::FeaturedContentImage' do
      visible false
    end
  end
end
