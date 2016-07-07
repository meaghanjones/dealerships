require('rspec')
require('vehicle')

describe(Vehicle) do
  describe('#make') do
    it("returns the name of the vehicle") do
      test_vehicle = Vehicle.new({:make => "Mazda", :model => "Protege", :year => 2001})
      expect(test_vehicle.make()).to(eq("Mazda"))
    end
  end
end
