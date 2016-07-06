Rails.application.routes.draw do
  path_url = 'admin/featured_content/:id/search_content'
  path_method = 'rails_admin_featured_content/featured_content#search_content'
  get path_url => path_method
end