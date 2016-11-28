require_relative( '../db/sql_runner' )

class Owner

  attr_reader(:id, :name)

  def initialize(options)
    @id = options['id'] ? options['id'].to_i : nil
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO owners (name) VALUES ('#{@name}') RETURNING *"
    owners = SqlRunner.run(sql).first
    @id = owners['id'].to_i
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