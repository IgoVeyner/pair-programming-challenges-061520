class Relationship

  attr_accessor :aliens

  @@all = []

  def initialize(alien1, alien2)
    @aliens = [alien1, alien2]

    @@all << self
  end

  def self.all
    @@all
  end

end
