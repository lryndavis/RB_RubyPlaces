class Places
  @@all_locations = []

  def initialize(location)
    @location = location
  end

  def location
    @location
  end

  define_singleton_method(:all) do
    @@all_locations
  end

  def save
    @@all_locations.push(self)
  end

  define_singleton_method(:clear) do
    @@all_locations = []
  end
end
