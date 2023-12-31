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
          controller: route.defaults[:controller],
          action: route.defaults[:action]
        }
      end

      respond_to do |format|
        format.html
        format.json do
          render json:  {
            partial: render_to_string(partial: 'data_pact/routes/list', formats: [:html]),
          }
        end
      end
    end

    def settings
    end

    def jobs
      @jobs = Sidekiq::Queue.all.flat_map(&:to_a).sort_by(&:enqueued_at)
      @redis = true
    rescue Redis::CannotConnectError => e
      @redis = false
    end
  end
end
