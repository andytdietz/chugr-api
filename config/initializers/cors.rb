Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "*", "localhost:5173" # All origins during development
    resource "*", headers: :any, methods: [:get, :post, :patch, :put, :delete] # Allow all methods
  end

  allow do
    origins "api.openbrewerydb.org"  # Add the API domain here
    resource "*", headers: :any, methods: [:get]  # Allow only GET requests to the API
  end

  allow do
    origins "api.geoapify.com"
    resource "*", headers: :any, methods: [:get] # Allow only GET requests
  end
end
