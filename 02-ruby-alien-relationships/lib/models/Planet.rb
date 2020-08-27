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
    Alien.all.select {|a| a.planet == self}
  end

  def local_singles
    Alien.singles.select{|a| a.planet == self}
  end

  def self.empty_planet
    Planet.all.map do |p| 
      if p.aliens == []
        p
      end
    end
  end
end
