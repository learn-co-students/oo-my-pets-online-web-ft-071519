class Dog
  
  attr_accessor :mood, :owner
  @@all = []
  def initialize(name, owner)
    @name = name 
    @owner = owner 
    @mood = "nervous"
    @@all << self 
  end
  
  def name 
    @name 
  end
  
  # def owner 
  #   @owner
  # end
 
  # def mood 
  #   @mood
  # end
 
  # def owner=(owner)
  #   @owner = owner 
  # end
 
  # def mood=(mood)
  #   @mood = mood
  # end
  
  def self.all 
    @@all
  end
  
end