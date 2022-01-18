require './lib/docking_station.rb'

  describe DockingStation do
    it 'release bike' do
      respond_to?(subject.release_bike)
    end

=begin
    it 'releases bike' do
      docking_station = DockingStation.new
      expect(docking_station.release_bike).to eq 'Bike Released!'
    end
=end
    
end
