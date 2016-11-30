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
  'breed' => 'Kitty Cat',
  })


pet2 = Pet.new({
  'name' => "Leeroy",
  'image' => "leeroy2.png",
  'breed' => 'Rodent',
  })


pet3 = Pet.new({
  'name' => "Tony",
  'image' => "tony3.png",
  'breed' => 'Lizard',
  })

pet4 = Pet.new({
  'name' => "Lexi",
  'image' => "lexi2.png",
  'breed' => 'Dog',
  })

pet5 = Pet.new({
  'name' => "Pinky",
  'image' => "pinky.png",
  'breed' => 'Skunk',
  })

pet6 = Pet.new({
  'name' => "Penny",
  'image' => "penny2.png",
  'breed' => 'Rodent',
  })

pet7 = Pet.new({
  'name' => "Roxy",
  'image' => "roxy.png",
  'breed' => 'Dog',
  })

pet8 = Pet.new({
  'name' => "Flower",
  'image' => "flower.png",
  'breed' => 'Sheep',
  })

pet9 = Pet.new({
  'name' => "Star",
  'image' => "star.png",
  'breed' => 'Leopard',
  })



pet1.save
pet2.save
pet3.save
pet4.save
pet5.save
pet6.save
pet7.save
pet8.save
pet9.save




binding.pry
nil