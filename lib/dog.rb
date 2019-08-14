class Dog
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
    @owner = Owner.new("Hermione")
  end
end
