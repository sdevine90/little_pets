require_relative( '../db/sql_runner' )
require_relative('owner')

class Pet

  attr_reader(:id, :name, :image, :owner_id)

  def initialize(options)
    @id = options['id'] ? options['id'].to_i : nil
    @name = options['name']
    @image = options['image']
    @owner_id = options['owner_id'] ? options['owner_id'].to_i : 'null'
  end

  def save()
    sql = "INSERT INTO pets (name, image, owner_id) 
          VALUES ('#{@name}', '#{@image}', #{@owner_id}) RETURNING *"
    pets = SqlRunner.run(sql).first
    @id = pets['id'].to_i
  end

  def owner
    sql = "SELECT * FROM owners where id = #{@owner_id}"
    ownerdata = SqlRunner.run( sql )
    return nil if ownerdata.first == nil
    options = ownerdata.first
    return Owner.new(options)
  end

  def adopt(new_owner_id)
    sql = "update pets set owner_id = #{new_owner_id} where id = #{@id}"
    SqlRunner.run(sql)
    @owner_id = new_owner_id
  end

  def self.update( options )
    sql = "UPDATE pets SET
    owner_id = null
    WHERE id=#{options['id'].to_i}"
    SqlRunner.run( sql )
  end

  # def self.unadopt(id)
  #   sql = "update pets set owner_id = 'null' where id = #{id}"
  #   SqlRunner.run(sql)
  # end 


  def self.find(id)
    sql = "SELECT * FROM pets WHERE id = #{id}"
    pets = SqlRunner.run(sql)
    result = Pet.new(pets.first)
    return result
  end

  def self.all()
    sql = "SELECT * FROM pets" 
    pets = SqlRunner.run( sql )
    return pets.map { |pet| Pet.new(pet)  }
  end

  def self.delete_all()
    sql = "DELETE FROM pets"
    SqlRunner.run( sql )
  end
end