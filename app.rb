require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/pets_controller')
require_relative('controllers/owners_controller')

get '/' do
  return erb(:index)
end


#type = hiden for id