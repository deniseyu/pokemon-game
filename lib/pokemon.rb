class Pokemon

  attr_accessor :caught, :name

  def initialize
    @caught = false
  end

end

class Pikachu < Pokemon

  def initialize
    super
    @name = :Pikachu
  end

end

class Snorlax < Pokemon

  def initialize
    super
    @name = :Snorlax
  end

end

class Jigglypuff < Pokemon

  def initialize
    super 
    @name = :Jigglypuff
  end

end

class Charmander < Pokemon

  def initialize
    super
    @name = :Charmander
  end

end

class Squirtle < Pokemon

  def initialize
    super
    @name = :Squirtle
  end

end

class Bulbasaur < Pokemon

  def initialize
    super
    @name = :Bulbasaur
  end
end


