require './lib/docking_station.rb'

  describe DockingStation do

    describe 'initialization' do
      subject { DockingStation.new }
      let(:bike) { Bike.new }
      it 'has a variable capacity' do
        described_class::DEFAULT_CAPACITY.times do
          subject.dock(bike)
        end
        expect{ subject.dock(bike) }.to raise_error "Docking station is full"
      end
    end

    describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
  
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end
  end
    #it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#dock' do
    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end
  end

  describe '#dock' do
    it 'gives an error when docking station is full' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station is full'
    end
  end

  it 'allows user to set capacity' do

    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end  
end