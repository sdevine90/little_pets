require('pry-byebug')
require_relative( '../models/pet.rb' )

pet1 = Pet.new({
  'name' => "Mixie"
  })

pet1.save

pet2 = Pet.new({
  'name' => "Toddle"
  })

pet2.save







binding.pry
nil