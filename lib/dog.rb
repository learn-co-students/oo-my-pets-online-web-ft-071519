class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    if Owner.all.include?(owner)
      @owner = owner
    else
      @owner = Owner.new(owner)
    end
    @mood = "nervous"
    @@all << self
    # binding.pry
  end
  
  def self.all
    @@all
  end
end