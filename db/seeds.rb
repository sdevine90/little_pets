require('pry-byebug')
require_relative( '../models/pet.rb' )
require_relative( '../models/owner.rb' )

Pet.delete_all
Owner.delete_all

owner1 = Owner.new({
  'name' => "Julie",
  'image' => "julie3.png"
  })

owner2 = Owner.new({
  'name' => "Cameron",
  'image' => "cameron.png"
  })

owner3 = Owner.new({
  'name' => "Val",
  'image' => "val2.png"
  })

owner1.save
owner2.save
owner3.save

pet1 = Pet.new({
  'name' => "Mixie",
  'image' => 'mixie.png',
  })


pet2 = Pet.new({
  'name' => "Leeroy",
  'image' => "leeroy2.png",
  })


pet3 = Pet.new({
  'name' => "Tony",
  'image' => "tony3.png",
  })

pet4 = Pet.new({
  'name' => "Lexi",
  'image' => "lexi2.png",
  })

pet1.save
pet2.save
pet3.save
pet4.save

# pet2.adopt(owner2.id)

binding.pry
nil