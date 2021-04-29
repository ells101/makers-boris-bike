require 'DockingStation'
describe DockingStation do
  describe 'responds to #release_bike' do  
  subject { DockingStation.new }
    it { is_expected.to respond_to(:release_bike) }
  end
  describe 'if a bike has been docked, then release a bike ' do
    #arrange
    station = DockingStation.new
    bike = Bike.new
    #act
    station.dock(bike)
    #assert
    subject { station.release_bike }
    it { is_expected.to respond_to(:working?) }
  end
  
  describe '#dock' do
    #Arrange
    station = DockingStation.new
    bike = Bike.new    
    #act
    station.dock(bike)
    #assert
    it 'raises an error when station is full' do
      expect { station.dock(bike) }.to raise_error
    end
  end 
  describe '#release_bike' do
    #Arrange
    station = DockingStation.new
    #Assert
    it 'raises an error when station is empty' do 
      expect { station.release_bike }.to raise_error 
    end
  end 

  describe 'responds to #dock' do
    subject { DockingStation.new }
    it { is_expected.to respond_to(:dock)}
  end

  describe '#bike' do
    it 'responds with a bike that has been docked' do
      # Arrange
      station = DockingStation.new
      bike = Bike.new
      
      # Act
      station.dock(bike)

      # Assert
      expect(station.bike).to eq(bike)
    end
  end
end