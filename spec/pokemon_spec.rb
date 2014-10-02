require 'pokemon'

describe Pokemon do 

  let(:pikachu) { Pikachu.new }

  it "should not be initially caught" do 
    expect(pikachu.caught?).to eq false
  end

end