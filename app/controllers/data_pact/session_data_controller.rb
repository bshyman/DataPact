module DataPact
  class SessionDataController < ApplicationController
    def index
      @session_data = session.to_hash
    end

    def create
      key = params[:session_key]
      value = params[:session_value]
      session[key] = value
      redirect_to session_data_path
    end

    def destroy
      key = params[:session_key_name]
      session.delete(key)
      redirect_to session_data_path
    end
  end
end