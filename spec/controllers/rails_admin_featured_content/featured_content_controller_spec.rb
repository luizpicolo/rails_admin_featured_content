require 'spec_helper'

describe RailsAdminFeaturedContent::FeaturedContentController, type: :controller do
  describe 'PUT #create_images' do
    it "Should return valid JSON" do
      featured_content = FactoryGirl.create :featured_content
      put :create_images, id: featured_content.id,
          featured_content_image: Rack::Test::UploadedFile.new(File.join('spec', 'fixtures', 'assets', 'example.jpg'))

      json = JSON.parse(response.body)
      path = '/uploads/rails_admin_featured_content/featured_content_image/image/1/'

      expect(response.status).to eq 200
      expect(json['image']['url']).to eq path + 'example.jpg'
      expect(json['image']['thumb']['url']).to eq path + 'thumb_example.jpg'
    end
  end

  describe 'GET #search_content' do
    it "Should return last created content" do
      featured_content = FactoryGirl.create :featured_content
      content_builder = RailsAdminContentBuilder::ContentBuilder.create(
        title: Faker::Lorem.characters,
        date_publish: Time.now - 1.day,
        written_by: Faker::Name.name,
        content: '',
        content_builder_category_id: 1,
        status: true
      )

      get :search_content, id: featured_content.id, term: content_builder.title[0,15]

      json = JSON.parse(response.body)

      puts response.body

      expect(response.status).to eq 200
      # expect(json['image']['url']).to eq path + 'example.jpg'
      # expect(json['image']['thumb']['url']).to eq path + 'thumb_example.jpg'
    end
  end
end
