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
end