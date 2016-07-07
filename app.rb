require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/vehicle')
require('./lib/dealership')

get('/') do
  erb(:index)
end

get('/dealerships') do
  @dealerships = Dealership.all()
  erb(:dealerships)
end

get('/dealerships/:id') do
  @dealership = Dealership.find(params.fetch('id').to_i())
  erb(:dealership)
end

get('/dealerships/new') do
  erb(:dealerships_form)
end

post('/dealerships') do
  name = params.fetch('name')
  @dealership = Dealership.new(:name => name).save()
  erb(:dealership_success)
end

get('/dealerships/:id/vehicles/new') do
  erb(:dealership_vehicles_form)
end

post('/vehicles')
  make = params.fetch('make')
  model = params.fetch('model')
  year = params.fetch('year').to_i()
  @vehicle = Vehicle.new({:make => make, :model => model, :year => year})
