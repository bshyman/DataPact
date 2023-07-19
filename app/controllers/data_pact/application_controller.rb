module DataPact
  class ApplicationController < ActionController::Base
    def index
      @routes = Rails.application.routes.routes.map do |route|
        {
          path: route.path.spec.to_s,
          controller_action: [route.defaults[:controller], '#', route.defaults[:action]].join,
        }
      end
      render 'application/index'
    end
  end
end
