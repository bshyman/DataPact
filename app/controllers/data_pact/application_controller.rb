module DataPact
  class ApplicationController < ActionController::Base
    def routes
      @routes = Rails.application.routes.routes.map do |route|
        {
          name: route.name,
          verb: route.verb,
          path: route.path.spec.to_s,
          format: route.defaults[:format],
          controller_action: [route.defaults[:controller], '#', route.defaults[:action]].join,
        }
      end
    end

    def settings
    end
  end
end
