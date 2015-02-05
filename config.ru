require 'rubygems'
require 'bundler/setup'
require 'rack/cors'

require_relative 'app'

use Rack::Cors do
  allow do
    origins '*'
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :delete, :options]
  end
end

run Rack::Cascade.new [API::Root]
# run Rack::Cascade.new [ApiSline]
