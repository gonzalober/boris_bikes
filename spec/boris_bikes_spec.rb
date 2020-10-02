require 'docking_station.rb' 
describe Bike do
    # it 'responds is it working? method' do
    #   expect(Bike.new).to respond_to('working?')
    # end
      it { should respond_to :working? }
    end

