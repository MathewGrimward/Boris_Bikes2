require './lib/docking_station.rb'

  describe DockingStation do
    it 'releases working bikes' do
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'can dock a bike' do
      docking_station = DockingStation.new
      docking_station.dock_bike('bike1')
      expect(docking_station.dock_bike('bike1')).to eq "Bike docked!"
    end

    it 'docks something' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.dock(bike)).to eq bike
    end
  end
  
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
  end
  
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

    #it 'release bike' do
    #  respond_to?(subject.release_bike)
    #end