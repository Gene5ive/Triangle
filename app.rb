require 'pry'
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangles')

get('/') do
  erb(:index)
end

get('/triangles') do
  side_a = params.fetch('side_a')
  side_b = params.fetch('side_b')
  side_c = params.fetch('side_c')

  user_triangle = Triangle.new(side_a, side_b, side_c)
  @triangle = user_triangle.triangle_type
  erb(:triangles)
end
