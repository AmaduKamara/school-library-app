class App
  def run_app
    puts "** Welcome to OOP School Library App **"
    start_app
  end
  
  def start_app
    puts "1. List all books."
    puts "2. List all people."
    puts "3. Create a person"
    puts "4. Create a book."
    puts "5. Create a rental."
    puts "6. List all rentals for a given person id"
    puts "7. Exit"
    puts
    input = gets.chomp.to_i
  end

  
end