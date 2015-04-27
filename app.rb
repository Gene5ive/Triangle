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
    if user_triangle == Triangle.scalene
      @triangle = user_triangle
    elsif user_triangle == Triangle.equal
        @triangle = user_triangle
    elsif user_triangle == Triangle.isosceles
        @triangle = user_triangle
    else user_triangle == Triangle.not_triangle
        @triangle = user_triangle
  end
  erb(:triangles)
end
