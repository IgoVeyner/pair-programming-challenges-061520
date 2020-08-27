class Alien


  attr_reader :name
  attr_accessor :planet, :significant_other

  @@all = []

  def initialize(name, planet = nil, significant_other = nil)
    @name = name
    @planet = planet
    @significant_other = significant_other
    @@all << self
  end

  def self.all
    @@all
  end

  def go_on_a_date(alien)
    unless alien.significant_other && self.significant_other
      alien.significant_other = self
      self.significant_other = alien
    end
  end

  def breakup
    self.significant_other.significant_other = nil
    self.significant_other = nil
  end

  def ready_to_move
    if self.planet != self.significant_other.planet 
      self.planet = self.significant_other.planet 
    end
  end

  def self.singles
    all.select {|a| a.significant_other == nil}
  end

  def self.dating
    all.select {|a| a.significant_other}
  end
end
