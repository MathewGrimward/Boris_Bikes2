require './lib/docking_station.rb'

  describe DockingStation do
    it { is_expected.to respond_to "release_bike"}

=begin
    it 'release bike' do
      respond_to?(subject.release_bike)
    end
=end 

=begin
    it 'releases bike' do
      docking_station = DockingStation.new
      expect(docking_station.release_bike).to respond_to 'Bike Released!'
    end
=end
    
end
