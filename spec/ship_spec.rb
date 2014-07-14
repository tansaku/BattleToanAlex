require 'ship'
describe Ship do

  let(:ship) { Ship.new }

  it 'knows the number of times its been hit' do
    ship.register_hit
    expect(ship.hits_count).to eq 1
  end

  it 'has no hits when it is initialized' do
    expect(ship.hits_count).to eq 0
  end

  it 'counts the number of hits' do
    2.times { ship.register_hit }
    expect(ship.hits_count).to eq 2
  end

  it 'when its created it should not be sunk' do
    expect(ship).not_to be_sunk
  end

  it 'when its hitted once it should sink' do
    expect(ship.register_hit).to be_sunk
  end

end