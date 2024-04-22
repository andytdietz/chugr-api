Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "example.com", "localhost:5173"
    resource "*", headers: :any, methods: [:get, :post, :patch, :put, :delete], expose: ["Authorization"]
  end

  allow do
    origins "api.openbrewerydb.org"  # Add the API domain here
    resource "*", headers: :any, methods: [:get]  # Allow only GET requests to the API
  end

  allow do
    origins "api.geoapify.com"
    resource "*", headers: :any, methods: [:get], expose: ["Authorization"]
  end
end
