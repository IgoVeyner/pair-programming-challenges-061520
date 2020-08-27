class Planet

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def aliens
    Alien.all.select { |alien| alien.planet == self }
  end

  def local_singles
    Alien.singles.select { |alien| alien.planet == self }
  end

  def self.empty_planets
    @@all.select { |planet| planet.aliens.length < 0 }
  end


end
