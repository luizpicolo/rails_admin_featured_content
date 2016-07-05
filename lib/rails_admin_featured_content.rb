require "rails_admin_featured_content/engine"

module RailsAdminFeaturedContent
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class FeaturedContent < Base
        RailsAdmin::Config::Actions.register(self)
        register_instance_option :member do
          true
        end

        register_instance_option :link_icon do
          'icon-align-justify'
        end

        register_instance_option :http_methods do
          [:get, :post]
        end

        register_instance_option :controller do
          Proc.new do
            @object = @abstract_model.model.find(params[:id])
            @response = {}

            if request.post?
              if params.present?

                if params[:publish]
                  status = true
                elsif params[:unpublish]
                  status = false
                elsif params[:save]
                  status = @object.status
                end

                if @object.update(content: params[:content], status: status)
                  flash[:success] = "Sucesso"
                else
                  flash[:error] = "Erro"
                end
              end
            end

            render :action => @action.template_name
          end
        end
      end
    end
  end
end
