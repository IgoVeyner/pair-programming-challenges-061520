# Sinatra DMV

The Frank Sinatra Department of Motor Vehicles has asked you to build a new website for them.

## Getting Started

Create a new Sinatra project with `corneal new sinatra-dmv`. You'll have to `cd` into the directory and then `bundle install`. You can run the server with `shotgun`.

## Backend

The website is a database for users. A user ought to have a `name`, `address`, `height`, `hair`, and `eye_color` attributes. Don't forget that corneal allows us to quickly build our user model in the terminal.

## Frontend

The welcome page should have a banner that reads "Welcome to the Frank Sinatra DMV" along with a picture of Frank Sinatra. Additionally, the welcome page should have links to the user index page and the user creation page.

The user index should display all the information for every user (`name`, `address`, `height`, `hair`, and `eye_color`).

The user creation page should have a form for building a user which, once submitted, should add the user to the database.

**Bonus**

On the user index, create a search form which once submitted will filter the user index to only show users with that name.
