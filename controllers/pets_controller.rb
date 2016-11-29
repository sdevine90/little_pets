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
  pet_id = params[:pet_id].to_i
  owner_id = params[:owner_id].to_i
  pet = Pet.find(pet_id)
  pet.adopt(owner_id)
  redirect to('/pets')
end

#all this is new 


get '/pets/:id/edit' do
  @pet = Pet.find( params[:id] )
  erb(:edit)
end

post '/pets/update/:id' do
  Pet.update( params)
  redirect to ("/owners")
end


# post '/pets/unadopt/:pet_id' do
#   owner_id = params[:owner_id].to_i
#   Pet.unadopt(owner_id)
#   redirect to('/pets')
# end



