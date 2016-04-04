module Flight
  def fly
    puts "I am a #{self.class.name.to_s.downcase} and I am flying."
  end
end


class Animal

  def breathe
    puts "breathes in and out"
  end
  
end

class Mammal < Animal
  attr_accessor :warm_blooded

  def initialize(warm_blooded)
    @warm_blooded = warm_blooded
  end

  def gives_birth
    puts "Ouch! I give live birth!"
  end
end

class Amphibian < Animal
  def swimming
    puts "swim swim swim"
  end
end

class Primate < Mammal 
  attr_accessor :has_2_legs

  def initialize(warm_blooded, has_2_legs)
    super(warm_blooded)
    @has_2_legs = has_2_legs
  end


  def eat_banana
    puts "Ohhhh bananas!"
  end
end




class Frog < Amphibian
end

class Bat < Mammal
  include Flight
end

class Bird < Mammal
  include Flight
end

class Parrot < Mammal
  include Flight
end

class Chimpanzee < Primate
end
 
hoppy = Frog.new
hoppy.breathe
hoppy.swimming



mankey = Chimpanzee.new(true, true)
mankey.gives_birth
mankey.eat_banana



moop = Parrot.new(true)
moop.fly

map = Bat.new(true)
map.fly

