class Dog 
  
  attr_accessor :id, :name,:breed
  
  def initialize( id: nil ,name:,breed:)
    @id = id
    @name = name
    @breed = breed
    
 end
 
def self.create_table
  sql = <<-SQL
  
  CREATE TABLE IF NOT EXISTS dogs (
  id  INTEGER PRIMARY KEY,
  name TEXT,
  breed TEXT
  )
  SQL
   
  DB[:conn].execute(sql)
end



 
def self.drop_table
  
  sql = DROP TABLE IF NOT EXISTS dogs
  DB[:conn].execute(sql)
   
end
 
def self.new_from_table
   
end
 
# def self.find_by_name
   
# end
 
# def update
   
# end
 
# def save
   
# end
  
end
