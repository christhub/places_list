require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require("./lib/places")

get('/') do
  erb(:index)
end

post('/add') do
  description = params.fetch('description')
  place = Places.new(description)
  place.save
  @all_places = Places.all
  erb(:list)
end
