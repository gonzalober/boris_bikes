require 'boris_bikes_feature_test.rb' 
describe DockingStation do
  it 'responds release_bike or not? method' do
    expect(DockingStation.new).to respond_to('release_bike')
    end
  it 'new docking station' do
    expect(DockingStation.new).to be_instance_of DockingStation
    end
end