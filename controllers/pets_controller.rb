require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/pet.rb' )
require_relative( '../models/owner.rb' )

get '/pets' do
  @pets = Pet.all
  @owners = Owner.all
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

post '/pets/adopt/:pet_id' do
  pet_id = params[:pet_id]
  owner_id = params[:owner_id]
  
end
