require 'game'
require 'pokemon_trainer'
require 'pokemon'

describe Game do 

  let(:trainer) { Trainer.new }
  let(:game) { Game.new }

  it "should let a trainer catch a random Pokemon" do
    expect(trainer.catch(game.random)).to_not eq "Pidgey"
  end

end
