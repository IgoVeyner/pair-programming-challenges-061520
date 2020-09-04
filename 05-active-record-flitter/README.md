# Flitter

We're building the backend for a Twitter clone named Flitter! Once this repo has been cloned down, make sure to `bundle install`. It's recommended that you read the entire readme before starting any code.

## User

The `User` model has at least two attributes: `username` and `real_name`. The username is the user's moniker ("chettGuy87") while the `real_name` is a user's given name ("Chett Tiller").

## Flitter

A `Flitter` is our version of a tweet. An instance of a `Flitter` has *at least* one attribute: `content`, which is the written content of a flitter, up to 160 characters (you don't have to enforce this but if you'd like to, look into ActiveRecord validations).

A flitter belongs to a user which means we can call the `#user` method on a flitter. Users can like flitters through a join model called `Like`.

If a flitter's user is destroyed, the flitter should be destroyed as well.

## Like

We are creating a seperate join between users and flitters through the like model: this is a many to many relationship. A like will only have foreign keys.

We can call the `#likers` method on an instance of `Flitter` to see all the users who have liked that flitter. Additionally, `User` instances can call `#liked_flitters` to see an array of flitters they've liked. Utilize ActiveRecord methods to create this functionality. You may need to build another model to make this work.

## Migrations

This app uses standalone_migrations. There are currently no migrations so to build a new migration use this command: `rake db:new_migration name=foo_bar_migration`.

It's *strongly* suggested you draw a diagram of the models before beginning migrations. This domain is more complex than what we've worked on previously.

## Resources

Hint: You can alias relationships that use the same models, thus building different types of relationships:

```
class User < ApplicationRecord
  has_many :likes
end

class Like < ApplicationRecord
  belongs_to :liker, class_name: 'User', foreign_key: 'user_id'
end
```

You can read more about it here: https://guides.rubyonrails.org/association_basics.html#options-for-belongs-to

You don't have to use these techniques but it's something you may see in production.
