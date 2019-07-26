class Cat
  # code goes here
  attr_accessor :owner
  attr_reader :name
  def initialze(name, owner)
    @name = name
    @owner = owner
  end
end