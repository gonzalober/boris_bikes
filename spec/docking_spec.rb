require './docking_station.rb'
describe DockingStation do
  it 'responds release_bike or not? method' do
    expect(DockingStation.new).to respond_to('release_bike')
    end

  it {should respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

  it 'checks the method dock' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to include bike
  end

  describe '#release_bike' do
      it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end
  end
  # describe '#release_bike' do
  #     it 'shows an error when dock is empty' do
  #       expect{subject.release_bike}.to raise_error 'no bikes available'
  #     end
  #   end
  # 
  # DockingStation::DEFAULT_CAPACITY.times do
  #   subject.dock Bike.new
  #   # end
end
