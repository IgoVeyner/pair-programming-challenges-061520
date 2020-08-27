class Report

  attr_reader :product, :manufacturer, :category, :date_released, :rating

  @@all = []

  def initialize(product:, manufacturer:, category:, date_released:, rating:)
    @product = product
    @manufacturer = manufacturer
    @category = category
    @date_released = date_released
    @rating = rating

    @@all << self
  end

  def self.all
    @@all
  end

  def pretty_print
    puts "\n-----"
    # if we puts an array in the terminal, it'll just show each item on its own line
    puts [@product, @manufacturer, @category, @date_released, @rating]
    puts "-----\n"
  end

end
