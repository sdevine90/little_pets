require('pry-byebug')
require_relative( '../models/pet.rb' )
require_relative( '../models/owner.rb' )

Pet.delete_all
Owner.delete_all

owner1 = Owner.new({
  'name' => "Julie"
  })

owner2 = Owner.new({
  'name' => "Pearl"
  })

owner1.save
owner2.save

pet1 = Pet.new({
  'name' => "Mixie",
  'image' => 'b60fbf6ee59b71f821dba2ac9b7f01c2.png',
  'owner_id' => owner1.id
  })

pet1.save

pet2 = Pet.new({
  'name' => "Toddle",
  'image' => "Blythe_style_penny_ling_by_fercho262-d68xo6p.png"
  })

pet2.save

# pet2.adopt(owner2.id)

binding.pry
nil