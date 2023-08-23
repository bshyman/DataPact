module DataPact
  class Engine < ::Rails::Engine
    isolate_namespace DataPact

    raise 'DataPact is not intended for use in production.' if Rails.env.production?
  end
end
