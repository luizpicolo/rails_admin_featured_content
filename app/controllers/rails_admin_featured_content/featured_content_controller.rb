module RailsAdminFeaturedContent
  class FeaturedContentController < ::ApplicationController
    def search_content
      @content_builder = RailsAdminContentBuilder::ContentBuilder.order('date_publish desc').limit(10).search(params[:term])
      if @content_builder
        render json: @content_builder.to_json(:include => { :content_builder_category => {:only => [:name, :slug]} })
      else
        render json: @content_builder.errors
      end
    end

    def create_images
      @featured_content = FeaturedContent.find(params[:id])
      @image = @featured_content.featured_content_images.create(image: params[:featured_content_image])
      if @image
        render json: find_image(@image.id)
      else
        render json: @image.errors
      end
    end

    private

    def find_image(id)
      FeaturedContentImage.find(id).image.to_json
    end
  end
end
