class Game

  attr_reader :wild_pokemon, :trainer

  def initialize
    @trainer = nil
    @wild_pokemon = [Pikachu.new, Charmander.new, Squirtle.new, Bulbasaur.new, Jigglypuff.new, Snorlax.new]
  end

  def add(trainer)
    @trainer = trainer
  end

  def random
    @wild_pokemon.sample
  end


end