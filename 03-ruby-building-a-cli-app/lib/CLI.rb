class CLI

  def initialize
    # I've added an initialize here to immediately create some of the instance variables we'll use
    @api = APIService.new
    @input = ''
  end

  def run
    # First we need to fetch the reports
    @api.fetch_reports
    # Then we call on the main menu
    main_menu
  end

  # main menu method that runs our major loop
  def main_menu
    until @input == 'exit'
      # we want to make sure at the beginning of every loop we show the options
      show_menu_options
      # I'm choosing to both chomp and downcase the user input just in case
      @input = gets.chomp.downcase
      # here we use a case statement to compare the various values against the input
      case @input
      when "1"
        print_random
      when "2"
        print_most_recent
      when "3"
        print_highest_rated
      when "exit"
        # all exit needs to do is say goodbye and the loop will end since @input is now "exit"
        puts "Goodbye!"
      else
        # we want an else statement just in case the user puts in something totally wrong
        puts "Invalid input!"
      end
    end # end while loop

  end # end main menu

  # the '\n' will start a new line which lets us do this all as a single string
  def show_menu_options
    puts "What would you like to do?\n1. Show a random report\n2. Show 3 most recent reports\n3. Show 3 highest rated reports\nType 'exit' to exit the program"
  end

  def print_random
    # the `.sample` method will return a random item from an array, and we use that here to simply grab a random entry and print it
    puts Report.all.sample.pretty_print
  end

  def print_most_recent
    # first we sort the reports by date_released (you'll notice I switched a and b in the actual sorting to put the recent ones at the top) and then sliced and printed the top three reports
    sorted_by_date = Report.all.sort {|report_a, report_b| report_b.date_released <=> report_a.date_released}
    sorted_by_date[0,3].each {|r| r.pretty_print}
  end

  def print_highest_rated
    # because there were some reports with a `nil` rating, we first had to make sure each report had a rating, and then did the same as above
    sorted_by_rating = Report.all.select {|report| report.rating}.sort {|report_a, report_b| report_b.rating <=> report_a.rating}
    sorted_by_rating[0,3].each {|r| r.pretty_print}
  end

end
