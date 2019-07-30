class Owner
  attr_reader :name, :species
  attr_accessor :pets
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @pets = []
    @@all << self
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name, self)
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name, self)
  end
  
  def walk_dogs
    Dog.all.each do |dog|
      if dog.owner == self
        dog.mood = "happy"
      end
    end
  end
  
  def feed_cats
    Cat.all.each do |cat|
      if cat.owner == self
        cat.mood = "happy"
      end
    end
  end
  
  def sell_pets
    Dog.all.each do |dog|
      if dog.owner == self
        dog.mood = "nervous"
        dog.owner = nil
      end
    end
    
    Cat.all.each do |cat|
      if cat.owner == self
        cat.mood = "nervous"
        cat.owner = nil
      end
    end
    
    self.pets.clear
  end
  
  def list_pets
    cat_count = self.cats.count
    dog_count = self.dogs.count
    
    "I have #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
  
end