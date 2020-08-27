# Alien Dating App

You've been asked to build an alien dating application! Work with  your partner in `Planet.rb` and `Alien.rb` in `lib/models` to complete the deliverables. To get started, `cd` into `02-ruby-alien-relationships` and open it with your IDE of choice. Be sure to `bundle install`. You can run the main file with the command `ruby bin/run.rb`.

### Deliverables:

- A planet has a `name` 
  #attr_accessor

- An alien has a `name` 
  #attr_accessor

- Aliens belong to a `planet` instance and know which planet they reside on
  #planet has many aliens i.e aliens = []

- A planet has an `#aliens` method that allows it to see all the aliens currently occupying it 
  #finder aliens.all.select if the alien's planet is correct planet

- Alien instances have a `significant_other` attribute that refers to an alien they're dating, this can be `nil` if they're not currently dating anyone 
  #attr_accessor that points to another alien instance

- Alien instances have a `#go_on_date` method that takes in an argument of another alien and causes them to become significant others if they're both single
  #check if both aliens are single >> if so update both significant_other attributes

- Alien instances have a `#breakup` method that causes them and their `significant_other` to become single
  #change both instances of significant other back to nil

- Alien instances have a `#ready_to_move` method that causes them to move to their `significant_other`s planet if they're not already there
  #checks if both aliens have the same planet accessor >> if not update one of them

- The Alien class has a `.singles` method that returns all the aliens that are currently single
  #finder that checks signifciant other attribute

- The Alien class has a `.dating` method that returns all the aliens that are currently in relationships
  #finder that checks significant other attribute

- A Planet instance has a `#local_singles` method that returns all the single aliens on that planet
  #Planet uses .singles and checks their planet attribute
  
- The Planet class has an `.empty_planets` method that returns every planet that doesn't have an alien on it

## Recommended workflow:

- Take turns being the driver. I'd recommend switching every fifteen or twenty minutes.
- If anyone has a question, look it up together. Researching is a skill, try and use google more often than your notes.
- If you find documentation that's hard to read, go through it together.
- If you get an error, try and explain what the error message is saying. What type of error is it? What method and line number is causing the error? What do you hypothesize is going wrong?
- One of the first rules of debugging is to check your assumptions. If something isn't working, test your variables to make sure they're coming through the way you think they are!
