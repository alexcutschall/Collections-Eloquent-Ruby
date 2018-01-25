class Student
  attr_reader :name
  def initialize(student_name, laptop=false)
    @name = student_name #not enough because @name has limited scope
    @laptop = laptop
  end

  def has_laptop?
    @laptop
  end

end
