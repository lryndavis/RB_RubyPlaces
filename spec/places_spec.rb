require('rspec')
require('places')

describe(Places) do
  before() do
    Places.clear()
  end
  
  describe('#location') do
    it("lets you add a location to the list") do
      test_place = Places.new("Seattle")
      expect(test_place.location()).to(eq("Seattle"))
    end
  end

  describe('#all') do
    it("list all of the locations entered") do
      expect(Places.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("add a location to the list") do
      test_place = Places.new("Seattle")
      test_place.save()
      expect(Places.all()).to(eq([test_place]))
    end
  end

  describe('#clear') do
    it("clear the list") do
      Places.new("Seattle").save()
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end
end
