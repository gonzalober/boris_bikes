require 'docking_station.rb' 
describe DockingStation do
  it 'responds release_bike or not? method' do
    expect(DockingStation.new).to respond_to('release_bike')
    end

  it 'new docking station' do
    expect(DockingStation.new).to be_instance_of DockingStation
    end

  it 'gets a bike and expects is working' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike.working?).to eq "bike is working"
  end

  it 'checks the method dock' do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station.dock(bike)).to eq bike
  end

end