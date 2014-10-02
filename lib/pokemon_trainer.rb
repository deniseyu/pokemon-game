class Trainer

  attr_accessor :pokedex, :name

  def initialize(name = nil)
    @name = name
    @pokedex = []
  end

  def catch(pokemon)
    @pokedex << pokemon
  end

  def poke_count
    pokedex.count 
  end

  def release(pokemon)
    @pokedex.delete(pokemon)
  end

end