class Game

  attr_reader :wild_pokemon

  def initialize
    @wild_pokemon = [Pikachu.new, Charmander.new, Squirtle.new, Bulbasaur.new, Jigglypuff.new, Snorlax.new, Abra.new, Butterfree.new, Clefairy.new, Eevee.new, Gyarados.new, Lapras.new, Meowth.new, Onix.new, Scyther.new, Zapdos.new]
  end

  def random
    @wild_pokemon.sample
  end


end