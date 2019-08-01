class Owner
 attr_reader :name
  @@all = []
  
  @@pets = { cats: [], dogs: []}
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  def species
    @species = "human"
  end 
  
  def say_species
    @say_species = "I am a human."
  end 
  
  def self.all
    @@all
  end 
  
  def self.count 
    all.count
  end 
  def self.reset_all
    self.all.clear
  end 
  
  def cats 
    Cat.all.select do |cat|
      cat.owner == self 
    end 
  end 
    
  def dogs
    Dog.all.select do |dog|
      dog.owner == self 
    end 
  end 
  
  def buy_cat(cat)
   @@pets[:cats] << Cat.new(cat)
  end 
    
  
end