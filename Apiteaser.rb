require 'pry'
require 'httparty'



  def menu
    puts '1) List all Users'
    puts '2) List a single user'
    puts '3) Create a new user'
    puts '4) Edit a User'
    puts '5) Destroy a user'
    puts '6) Exit'
    choice = gets.to_i
    menu_options(choice)
  end

  def menu_options(choice)
    case choice
    when 1
      list_all_users
    when 2
      list_single_user
    when 3
      create_user
    when 4
      edit_user
    when 5
      destroy_user
    when 6
      puts 'You are leaving'
      Exit
    else
      puts 'Enter a valid option'
      menu
    end
  end

def list_all_users
  puts 'Listing all users'
  response = HTTParty.get('http://devpoint-ajax-example-server.herokuapp.com/api/v1/users')
  puts response.body
end

def list_single_user
  puts 'Listing a single user'
  response = HTTParty.get('http://devpoint-ajax-example-server.herokuapp.com/api/v1/users/11287')
  puts response.body
end

def create_user
  puts 'Creating a user'
  response = HTTParty.put('http://devpoint-ajax-example-server.herokuapp.com/api/v1/users/73')
  puts response.body
end

menu
