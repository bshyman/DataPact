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


    def rakes
      if Rails.env.development?
        Rails.application.load_tasks
        @tasks = Rake::Task.tasks.map(&:to_s).sort
      else
        render plain: 'This page is only available in a development environment', status: :forbidden
      end
    end
  end
end
