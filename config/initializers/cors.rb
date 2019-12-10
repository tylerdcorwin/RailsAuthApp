# This file is inserting a level of middleware using the cors module
# All the rules that are placed in this file will be intercepted by the
# rails config, basically at the top of the chain we want to implement these rules
# note that you may have to change the localhost port to 3030

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://localhost:3000"
    resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end

  allow do
    origins "https://your-production-app-here.com"
    resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end
end
