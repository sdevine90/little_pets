require('pry-byebug')
require_relative( '../models/pet.rb' )
require_relative( '../models/owner.rb' )

owner1 = Owner.new({
  'name' => "Julie"
  })

owner1.save

pet1 = Pet.new({
  'name' => "Mixie",
  'image' => 'b60fbf6ee59b71f821dba2ac9b7f01c2.png'
  })

pet1.save

pet2 = Pet.new({
  'name' => "Toddle",
  'image' => 'Blythe_style_penny_ling_by_fercho262-d68xo6p.png'
  })

pet2.save