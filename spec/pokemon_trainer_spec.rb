require 'pokemon_trainer'
require 'pokemon'

describe Trainer do 

  let(:trainer) { Trainer.new }
  let(:pokemon) { Squirtle.new }

  it "should start with no Pokemon" do
    expect(trainer.poke_count).to eq 0
  end

  it "should be able to catch a Pokemon" do 
    trainer.catch(pokemon)
    expect(trainer.poke_count).to eq 1
  end

end