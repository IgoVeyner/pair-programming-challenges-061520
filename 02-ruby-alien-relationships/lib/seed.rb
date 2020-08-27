puts "Creating seeds..."

p1 = Planet.new("Glorblaff")
p2 = Planet.new("Kashyyk")
p3 = Planet.new("Xxax")

a1 = Alien.new("E.T", p1)
a2 = Alien.new("Chewbacca", p2)
a3 = Alien.new("Mother Brain", p3)
a4 = Alien.new("Dr Zoidberg", p2)
a5 = Alien.new("Yvie Oddly", p1)

a1.go_on_date(a2)

binding.pry

puts "Seeds created!"
