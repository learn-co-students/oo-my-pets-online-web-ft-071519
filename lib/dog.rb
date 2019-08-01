class Dog
  attr_accessor :owner 
  attr_reader :name, :mood

@@all = []
  
  
  def initialize(name,owner)
    @name = name
    @owner = owner
    @@all << self 
    @mood = "nervous"
    
  end
  
  def mood=( mood = "hungry")
    @mood = mood
  end 
  
  def self.all
    @@all
  end 
  
end