require('pry-byebug')
require_relative( '../models/pet.rb' )
require_relative( '../models/owner.rb' )

Pet.delete_all
Owner.delete_all

owner1 = Owner.new({
  'name' => "Julie",
  'image' => "julie.png"
  })

owner2 = Owner.new({
  'name' => "Ben",
  'image' => "ben.png"
  })

owner1.save
owner2.save

pet1 = Pet.new({
  'name' => "Mixie",
  'image' => 'b60fbf6ee59b71f821dba2ac9b7f01c2.png',
  })

pet1.save

pet2 = Pet.new({
  'name' => "Leeroy",
  'image' => "Leeroy.png",
  })

pet2.save

pet3 = Pet.new({
  'name' => "Tony",
  'image' => "tony.png",
  })

pet3.save

# pet2.adopt(owner2.id)

binding.pry
nil