class Owner

  attr_reader :name, :species
  attr_accessor
  @@all = []

  def initialize(name)
    @species = "human"
    @name = name
    @@all << self
  end

  def say_species
    p "I am a #{self.species}."
  end
  def self.all
    @@all
  end
  def self.count
    self.all.count {|person| person}
  end

  def self.reset_all
    self.all.clear
  end

  def buy_cat(name)
    cat = Cat.new(name, self.name)
    cat.owner = self
  end
  def buy_dog(name)
    dog = Dog.new(name, self.name)
    dog.owner = self
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def walk_dogs
    Dog.all.collect {|dog| dog.mood = "happy"}
  end

  def feed_cats
    Cat.all.collect {|cat| cat.mood = "happy"}
  end

  def sell_pets

    Dog.all.each {|dog|  dog.mood = "nervous"}
    Cat.all.each {|cat|  cat.mood = "nervous"}
    Dog.all.each {|dog| dog.owner = nil}
    Cat.all.each {|cat| cat.owner = nil}
  end

  def list_pets
    p "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end
