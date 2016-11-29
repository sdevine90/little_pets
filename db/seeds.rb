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

owner3 = Owner.new({
  'name' => "Val",
  'image' => "val.png"
  })

owner1.save
owner2.save
owner3.save

pet1 = Pet.new({
  'name' => "Mixie",
  'image' => 'b60fbf6ee59b71f821dba2ac9b7f01c2.png',
  })


pet2 = Pet.new({
  'name' => "Leeroy",
  'image' => "Leeroy.png",
  })


pet3 = Pet.new({
  'name' => "Tony",
  'image' => "tony.png",
  })

pet4 = Pet.new({
  'name' => "Oasis",
  'image' => "oasis.png",
  })

pet1.save
pet2.save
pet3.save
pet4.save

# pet2.adopt(owner2.id)

binding.pry
nil