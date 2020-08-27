require "pry"
class Sandwich

  attr_reader :name, :isVegetarian, :isVegan
  attr_accessor :price, :ingredients, :ratings

  def isVegetarian=(boolean)
    @isVegetarian = boolean
    if !boolean
      @isVegan = false
    end
  end

  def isVegan=(boolean)
    @isVegan = boolean
    if boolean
      @isVegetarian = true
    end
  end

  def initialize(name, price, ingredients, bread, isVegetarian, isVegan)
    @name = name
    @price = price
    @ingredients = ingredients
    @bread = bread
    @isVegetarian = isVegetarian
    @isVegan = isVegan
    @ratings = []
  end

  def order
    "You ordered the #{name} which has #{list_ingredients} on #{bread}. That will be $#{price} please!"
  end

  def list_ingredients
    if ingredients.length == 0
      return "nothing"
    elsif ingredients.length == 1
      return ingredients[0]
    else
      return ingredients[0, ingredients.length - 1].join(", ") + " and " + ingredients[-1]
    end
  end

  def add_rating(rating)
    if rating.class == Integer &&  rating >= 1 && rating <= 5
      @ratings << rating
    end
  end

  def average_rating
    if @ratings.length
      @ratings.inject(:+) / @ratings.length.to_f
    else
      "There are no ratings yet!"
    end
  end

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
sandwich_1 = Sandwich.new("Grilled Cheese", 2.99, ["cheddar cheese", "monterey jack"], "sourdough", true, false)

sandwich_1.add_rating(3)
sandwich_1.add_rating(3)
sandwich_1.add_rating(3)
sandwich_1.add_rating(4)

binding.pry
puts "Yes chef!"
