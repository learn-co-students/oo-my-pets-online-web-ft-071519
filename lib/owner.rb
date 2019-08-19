class Owner
  
  attr_reader :species
  attr_accessor :pets, :dogs, :cats
  
  @@all = []

  def initialize(name)
    @name = name
    @species = species
    @@all << self 
    
  end
  
  def name 
    @name 
  end
  
  def species
    human = "human"
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all 
    @@all 
  end
  
  def self.count 
    @@all.count
  end
  
  def self.reset_all 
    @@all.clear
  end

  def pets 
    self.cats + self.dogs
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
  
  def buy_cat(name)
    cat = Cat.new(name, self)
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def list_pets
    "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end
  
  def sell_pets
    pets.each do |pet|

        pet.mood = "nervous"
        pet.owner = nil
    end
  end
  
end
