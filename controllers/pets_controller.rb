require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/pet.rb' )
require_relative( '../models/owner.rb' )

get '/pets' do
  @pets = Pet.all
  erb(:"pets/index")
end


get '/pets/new' do
  erb :"pets/new"
end

post '/pets' do
  pet = Pet.new(params)
  pet.save
  redirect to('/pets')
end