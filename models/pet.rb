require_relative( '../db/sql_runner' )

class Pet

  attr_reader(:id, :name, :image)

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @image = options['image']
  end

  def save()
    sql = "INSERT INTO pets (name, image) VALUES ('#{@name}', '#{@image}') RETURNING *"
    pets = SqlRunner.run(sql).first
    @id = pets['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM pets" 
    pets = SqlRunner.run( sql )
    return pets.map { |pet| Pet.new(pet)  }
  end

end