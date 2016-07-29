class CreateFeaturedContentImages < ActiveRecord::Migration
  def change
    create_table :featured_content_images do |t|
      t.string :image
      t.references :featured_content, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
