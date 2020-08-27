# Food Reviews

You've been tasked with developing a simple CLI application that gets its data from a remote API called ["Report of the Week"](https://github.com/andyklimczak/TheReportOfTheWeek-API). The purpose of this API is to download the reports and serve them to users until they choose to quit the program.

## What You Have

Currently, you have a few files that should look familiar to you including a `run` file, an `environment` file, and a model. Added to these are a `CLI` file which is where your program's main logic will exist, and an `APIService` file where you'll build fetches to the API. Look over these files in order to understand what's going on with them.

## Deliverables:

- Your `APIService` should be able to fetch from the provided endpoint in order to get all the reports
- On a successful fetch, your API should create a new `Report` instance for each report sent back
- A `Report` instance should have the `#print_report` method which nicely pretty prints all of that report's attributes
- The `CLI` should use `APIService` to fetch and create all the `Report` instances on run
- The `CLI` should enter a loop that allows a user to pick from the following options:
  - Show a random report
  - Show the 3 most recent reports
  - Show the 3 highest rated reports
  - Exit the program
- After selecting an option, the CLI should loop back around to the main menu and offer the options again
- On choosing to exit, the CLI should display the message "Goodbye!" and quit to the terminal

## Tips

When building the fetch for the API, you can require the built in ruby modules (`uri` and `net/http`) or utilize a gem like [`httparty`](https://github.com/jnunemaker/httparty) or [`restclient`](https://github.com/rest-client/rest-client)

When using `net/http` or other gems/modules, don't forgot to require them in the environment!

You can build out all of your Report instances with a pretty simple `.each` loop.

Pretty print simply means printing in a way that's appealing to humans as opposed to just printing out all the information in a blob.

It's recommended that you use a `while` loop to build the main loop of your CLI. You can also build it recursively if you so please although this is considered bad practice.
