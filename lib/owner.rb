require 'pry'

class Owner
  # code goes here
attr_reader :name , :species
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    "I am a human."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    ownersCat = []
    Cat.all.each do |eachCat|
      if eachCat.owner == self
        ownersCat << eachCat
      end
    end
  return ownersCat
  end 
  
  def dogs
    ownersDog = []
    Dog.all.each do |eachDog|
      if eachDog.owner == self
 
        ownersDog << eachDog
      end
    end
  return ownersDog
  end 
  
  def buy_cat(catName)

   newCat = Cat.new(catName,self)
  end
  
  def buy_dog(dogName)
   newDog = Dog.new(dogName,self)
  end
  
  def walk_dogs
    self.dogs.map {|d| d.mood = "happy"}
  end
  def feed_cats
    self.cats.map {|d| d.mood = "happy"}
  end
  
  def sell_pets
    self.cats.map do|d| 
      d.mood = "nervous"
      d.owner = nil
    end
    self.dogs.map do|d| 
      d.mood = "nervous"
      d.owner = nil
    end

  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end