class Trainer

  attr_accessor :pokedex, :name

  def initialize(name = nil)
    @name = name
    @pokedex = []
  end

  def catch(pokemon)
    a = [1, 2, 3, 4, 5, 6].sample
    if a > 3
      @pokedex << pokemon
    else
      return pokemon
    end
  end

  def poke_count
    pokedex.count 
  end

  def release(pokemon)
    @pokedex.delete(pokemon)
  end

end