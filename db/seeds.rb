require('pry-byebug')
require_relative( '../models/pet.rb' )
require_relative( '../models/owner.rb' )

owner1 = Owner.new({
  'name' => "Julie"
  })

owner1.save

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