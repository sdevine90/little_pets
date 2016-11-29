require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/pet.rb' )
require_relative( '../models/owner.rb' )

get '/owners' do
  @owners = Owner.all
  @pets = Pet.all
  erb(:"owners/index")
end


get '/owners/new' do
  @pets = Pet.all
  erb(:"owners/new")
end

post '/owners' do
  owner = owner.new(params)
  owner.save
  redirect to("/owners")
end