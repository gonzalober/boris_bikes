require 'docking_station.rb'
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
        expect(subject.release_bike).to include bike
      end
  end

  describe '#release_bike' do
      it 'shows an error when dock is empty' do
        expect{subject.release_bike}.to raise_error 'no bikes available'
      end
    end
  # 
  # describe '#dock' do
  #   it 'shows an error when dock is full' do
  #     bike = Bike.new
  #     docking_station = DockingStation.new
  #     expect {21.times { docking_station.dock(bike)}}.to raise_error 'Docking station is full'
  #   end
  # end
end
