require 'rake'

require_relative 'app'

task :routes do
  API::V1.routes.each do |route|
  # ApiSline.routes.each do |route|
    method = route.route_method.ljust(10)
    path = route.route_path
    puts "     #{method} #{path}"
  end
end
