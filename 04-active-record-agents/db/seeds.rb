# You can build your seeds here to test the data
# The next two lines remove all agents and organizations before reseeding the database
Agent.destroy_all
Organization.destroy_all

o = Organization.new
o2 = Organization.new
a = Agent.new
b = Agent.new
a.organization = o
b.organization = o

a.save
b.save
o.save
o2.save