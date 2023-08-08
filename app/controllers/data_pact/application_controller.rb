module DataPact
  class ApplicationController < ActionController::Base

    def index
      redirect_to routes_path
    end

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

    def jobs
      @jobs = Sidekiq::Queue.all.flat_map(&:to_a).sort_by(&:enqueued_at)
    end
  end
end
