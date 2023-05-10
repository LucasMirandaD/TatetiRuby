# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:4201' # Reemplaza esto con la URL de tu front-end

      resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options]
    end
    allow do
        origins 'http://localhost:4200' # Reemplaza esto con la URL de tu front-end
        
        resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options]
      end
  end
  