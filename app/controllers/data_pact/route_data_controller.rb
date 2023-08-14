module DataPact
  class RouteDataController < ApplicationController
    def index
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

      if params[:controller_filter].present?
        @routes = @routes.select { |r| r[:controller] == params[:controller_filter] }
      end

      if params[:search_term].present?
        @routes = @routes.select { |r| r.values.map(&:to_s).any? { |v| v&.include?(params[:search_term]) } }
      end

      @controllers = @routes.collect { |r| r[:controller] }
      respond_to do |format|
        format.html { render 'routes' }
        format.json do
          render json: {
            partial: render_to_string(partial: 'data_pact/routes/list', formats: [:html]),
          }
        end
      end
    end

    def list
    end
  end
end