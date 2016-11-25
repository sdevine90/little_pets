require('pry-byebug')
require_relative( '../models/pet.rb' )

pet1 = Pet.new({
  'name' => "Mixie"
  })

pet1.save

binding.pry
nil