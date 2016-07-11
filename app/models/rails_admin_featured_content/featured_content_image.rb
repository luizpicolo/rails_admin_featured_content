module RailsAdminFeaturedContent
  class FeaturedContentImage < ActiveRecord::Base
    self.table_name = 'featured_content_images'

    validates :image, presence: true
    mount_uploader :image, FeaturedContentImageUploader
    belongs_to :featured_content, inverse_of: :featured_content_images
  end
end