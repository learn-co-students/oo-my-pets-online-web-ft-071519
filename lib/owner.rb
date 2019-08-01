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
   Cat.new(cat, self)
  end 
  
  def buy_dog(dog)
    Dog.new(dog, self)
  end 
  
  def walk_dogs
    dogs.each { |dog| dog.mood = "happy"}
  end 
  def feed_cats 
    cats.each {|cat| cat.mood = "happy"}
  end 
  def sell_pets
    pets = dogs + cats
    pets.each do |pet| 
      pet.mood = "nervous"
      pet.owner = nil
    end 
  end 
  
  def list_pets 
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end 
  
end