require 'DockingStation'
describe DockingStation do
  describe 'responds to #release_bike' do
    subject { DockingStation.new }
    it { is_expected.to respond_to(:release_bike) }
  end
  describe '#release_bike returns a Bike that responds to #working?' do
    subject { DockingStation.new.release_bike }
    it { is_expected.to respond_to(:working?) }
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