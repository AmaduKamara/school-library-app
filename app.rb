require './student'
require './teacher'
require './book'
require './rental'

class App
  def run_app
    @books = []
    @persons = []
    puts
    puts "** Welcome to OOP School Library App **"
    puts
    start_app
  end
  
  def start_app
    puts "Please choose option by entering a number: "
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
    if @books.length.zero?
      puts
      puts "There's no book, please add a book."
      puts
    else
      @books.each_with_index do |book, index|
        puts "#{index + 1} - Book title: #{book.title}, Written by: #{book.author}"
        puts
      end
    end
  end

  def all_people
    if @persons.length.zero?
      puts "There's no person, please add a person."
    else
      @persons.each_with_index do |person, index|
        if person.is_a?(Teacher)
          puts "[Teacher] #{index + 1} - ID: #{person.id}, Name: #{person.name}, Age: #{person.age}"
        else
          puts "[Student] #{index + 1} - ID: #{person.id}, Name: #{person.name}, Age: #{person.age}"
        end
      end
    end
  end

  def new_person
    puts
    puts "Do you want to create a: \n1. Student \n2. Teacher"
    option = gets.chomp.to_i
    case option
    when 1
      @persons.push(new_student)
      puts 'Student created successfully!'
    when 2
      @persons.push(new_teacher)
      puts 'Teacher created successfully!'
    else
      puts 'Please select a correct option'
      create_person
    end
  end

  def new_student
    print 'Student name: '
    name = gets.chomp
    print 'Student age: '
    age = gets.chomp
    print "Has parent permission? [Y/N - y/n]: "
    permission = gets.chomp
    puts
    case permission
    when "Y" || "y"
      Student.new(age, name)
    when "N" || "n"
      Student.new(age, name, parent_permission: false)
    else
      puts 'Please select a correct option'
      create_student
    end
  end

  def new_teacher
    print "Teacher age: "
    age = gets.chomp
    print "Teacher name: "
    name = gets.chomp
    print "Specialization: "
    specialization = gets.chomp
    Teacher.new(age, specialization, name)
  end

  def new_book
    print "Book title: "
    title = gets.chomp
    print "Book author: "
    author = gets.chomp
    @books.push(Book.new(title, author))
    puts "✔️  Book created successfully"
    puts
  end

  def new_rental
    puts 'Select a book by number '
    all_books
    start_app if @books.length.zero?
    book_index = gets.chomp.to_i
    puts 'Select a person by number: '
    all_people
    start_app if @persons.length.zero?
    person_index = gets.chomp.to_i
    print 'Enter date: '
    date = gets.chomp
    Rental.new(date, @persons[person_index - 1], @books[book_index - 1])
    puts "Rental created succesfully -
    book: #{@books[book_index - 1].title}, Person: #{@persons[person_index - 1].name}, Date: #{date}"
  end

  def person_object(id)
    @persons.each do |person|
      return person if person.id == id
    end
    nil
  end

  def all_rentals
    puts 'Select a person by ID: '
    all_people
    start_app if @persons.length.zero?
    id = gets.chomp.to_i
    person = person_object(id)
    if person.nil?
      puts 'Wrong input, Please type correct ID'
      return
    end
    rentals = person.rentals
    if rentals.length.zero?
      puts 'No rentals for this person, Please add a rental first'
    else
      rentals.each_with_index do |rent, index|
        puts "#{index + 1} - Date: #{rent.date}, Book: #{rent.book.title} by #{rent.person.name}"
      end
    end
  end
end
