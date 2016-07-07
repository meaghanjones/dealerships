require('rspec')
require('vehicle')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end
  
  describe('#make') do
    it("returns the name of the vehicle") do
      test_vehicle = Vehicle.new({:make => "Mazda", :model => "Protege", :year => 2001})
      expect(test_vehicle.make()).to(eq("Mazda"))
    end
  end

  describe('#save') do
    it('saves a vehicle in an array of vehicles') do
      test_vehicle = Vehicle.new({:make => "Mazda", :model => "Protege", :year => 2001})
      expect(test_vehicle.save()).to(eq([test_vehicle]))
    end
  end

  describe('.clear') do
    it("clears the array of vehicles") do
      test_vehicle = Vehicle.new({:make => "Mazda", :model => "Protege", :year => 2001})
      test_vehicle.save()
      expect(Vehicle.clear()).to(eq([]))
    end
  end

  describe('.all') do
    it('returns a full array of vehicles') do
      test_vehicle = Vehicle.new({:make => "Mazda", :model => "Protege", :year => 2001})
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end
end
