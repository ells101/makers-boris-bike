require_relative 'bike' # require doesn't work here, need require relative
class DockingStation #  used when you referring to a file thats relative to 
  attr_reader :bikes 
  def initialize
    @bikes = []
  end
  def release_bike # the current file you are working on (basically, within the same project directory).
    raise "ERROR! You can't do that... Docking Station is empty." if bikes.empty?
    
    Bike.new

  end
  def dock(new_bike)
    raise "ERROR! Docking station is full." if bikes.length >= 20
    @bikes << new_bike
  end
end