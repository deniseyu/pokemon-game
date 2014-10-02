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
    pokemon.count 
  end

end