require 'boris_bikes_feature_test' 
describe Bike do
    it 'responds is it working? method' do
      expect(Bike.new).to respond_to('working?')
    end
  end