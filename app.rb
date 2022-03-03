class App
  def run_app
    puts
    puts "** Welcome to OOP School Library App **"
    puts
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
    handle_input(input)
    start_app()
  end

  def handle_input(input)
    case input
      when 1 then all_books
      when 2 then all_people
      when 3 then new_person
      when 4 then new_book
      when 5 then new_rental
      when 6 then all_rentals
      when 7 then
        puts "Thank you for using OOP School Library app"
        exit
      else
        puts
        puts "Sorry, input not specified. Try again next time."
        puts
    end
  end

  def all_books

  end

  def all_people

  end

  def new_person

  end

  def new_book

  end

  def new_rental

  end

  def all_rentals

  end

end
