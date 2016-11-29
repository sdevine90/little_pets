require_relative( '../db/sql_runner' )

class Owner

  attr_reader(:id, :name, :image, :pet_id)

  def initialize(options)
    @id = options['id'] ? options['id'].to_i : nil
    @name = options['name']
    @image = options['image']
  end

  def save()
    sql = "INSERT INTO owners (name, image) VALUES ('#{@name}', '#{@image}') RETURNING *"
    owners = SqlRunner.run(sql).first
    @id = owners['id'].to_i
  end

  def pet
    sql = "SELECT * FROM pets where id = #{@pet_id}"
    petdata = SqlRunner.run( sql )
    return nil if petdata.first == nil
    options = petdata.first
    return Pet.new(options)
  end


  def self.all()
    sql = "SELECT * FROM owners" 
    owners = SqlRunner.run( sql )
    return owners.map { |owner| Owner.new(owner)  }
  end

  def self.delete_all()
    sql = "DELETE FROM owners"
    SqlRunner.run( sql )
  end

end