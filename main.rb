require_relative 'app'

class Main
  def initialize
    @app = App.new
  end

  def actions
    puts
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  def run
    puts 'Welcome to School Library App!'

    loop do
      actions

      option = gets.chomp

      break if option == '7'

      @app.handle_action option
    end

    puts 'Thank you for using this app!'
  end
end

run_application = Main.new
run_application.run
