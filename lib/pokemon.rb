class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:)
    @db = db
    
  end
  
  def self.save(name, type)
   new_pokemon
  end
end

