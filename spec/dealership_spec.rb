require('rspec')
require('dealership')

describe(Dealership) do
  before() do
    Dealership.clear()
  end

  describe('#name') do
    it('returns the name of the dealership') do
      test_dealership = Dealership.new({:name => "Bob's Used Cars", :cars => []})
      expect(test_dealership.name()).to(eq("Bob's Used Cars"))
    end
  end

  describe('#cars') do
    it('returns the array of cars in the dealership') do
      test_dealership =  Dealership.new({:name => "Bob's Used Cars", :cars => ["Kia", "Mazda"]})
      expect(test_dealership.cars()).to(eq(["Kia", "Mazda"]))
    end
  end

  describe('#save') do
    it('saves the dealerships in an array') do
      test_dealership =  Dealership.new({:name => "Bob's Used Cars", :cars => ["Kia", "Mazda"]})
      expect(test_dealership.save()).to(eq([test_dealership]))
    end
  end
  describe('.all') do
    it('returns all dealerships') do
      test_dealership1 = Dealership.new({:name => "Bob's Used Cars", :cars => ["Kia", "Mazda"]})
      test_dealership1.save()
      test_dealership2 = Dealership.new({:name => "Car-O-Rama", :cars => []})
      test_dealership2.save()
      expect(Dealership.all()).to(eq([test_dealership1, test_dealership2]))
    end
  end
end
