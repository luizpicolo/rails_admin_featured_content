module RailsAdminFeaturedContent
  class FeaturedContent < ActiveRecord::Base
    self.table_name = 'featured_contents'

    has_many :featured_content_images, inverse_of: :featured_content, dependent: :destroy

    def featured_sanitized
      white_list_sanitizer = Rails::Html::WhiteListSanitizer.new
      white_list_sanitizer.sanitize(
        self.content,
        tags: %w(div h1 h2 b u p img section figure figcaption a iframe),
        attributes: %w(src class alt href allowfullscreen frameborder height width)
      ).try(:html_safe)
    end
  end
end