require "pry"
class Sandwich

  attr_accessor :price, :ingredients, :bread, :ratings, :isVegetarian, :isVegan

  @@ratings = []
  @@all = []

  def initialize(name="BLT", price="$4.50", bread="rye", isVegetarian=false, isVegan=false)
    @name = name
    @ingredients = []
    @price = price
    @bread = bread
    @isVegetarian = isVegetarian
    @isVegan = isVegan
    @@all << self
  end

  def isVegetarian=(veg)
    @isVegetarian = veg
  end

  def isVegan=(veg)
    if @isVegetarian == true
      true
    else
      isVegan = veg
    end
  end

  def name
    @name
  end

  def add_ingredient(array)
    @ingredients << array
    return @ingredients.flatten!
  end

  def format_ingredients(array)
    if array.length == 1
      return array.join
    elsif array.length == 2
      return array.join(" and ")
    else
      last = array.last
      array.pop
      string = array.join(", ")
      string << ", and " + last
    end 
  end

  def order
    puts "You ordered the #{@name} which has #{self.format_ingredients(@ingredients)} on #{bread} bread. That will be #{price} please!"
  end

  def add_rating(rating)
    @ratings = rating if rating.between?(1,5)
  end

  def average_rating
    all_of_these = @@all.select{|s| s.name == self.name}
    all_ratings = []
    all_of_these.each do |s| 
      all_ratings << s.ratings if s.ratings != nil
    end
    all_ratings.inject(0){|sum,x| sum + x} / all_ratings.length
  end

end
# Test data
sandwich_1 = Sandwich.new
sandwich_2 = Sandwich.new
sandwich_3 = Sandwich.new

binding.pry
puts "Yes chef!"
