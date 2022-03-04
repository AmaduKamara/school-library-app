require './person'

class Student < Person
  attr_reader :classroom

  def initialize(name, age, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.studens.push(self) unless classroom.student.include?(self)
  end
end
