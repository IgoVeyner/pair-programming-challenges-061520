class Alien


  attr_reader :name
  attr_accessor :planet

  @@all = []

  def initialize(name, planet)
    @name = name
    @planet = planet

    @@all << self
  end

  def self.all
    @@all
  end

  def go_on_date(alien)
    unless self.relationship || alien.relationship
      Relationship.new(self, alien)
    end
  end

  def relationship
    Relationship.all.find do |relationship|
      relationship.aliens.include?(self)
    end
  end

  def significant_other
    if relationship
      relationship.aliens.find { |alien| alien != self }
    end
  end

  def breakup
    if relationship
      relationship.aliens = nil
    end
  end

  def ready_to_move
    @planet = significant_other.planet
  end

  def self.singles
    @@all.select { |alien| !alien.relationship }
  end

  def self.dating
    @@all.select { |alien| alien.relationship }
  end

end
