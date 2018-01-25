# student_test.rb
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/student' #don't need the .rb

class StudentTest < Minitest::Test
# test it exists
# test it has a name
  def test_student_has_name
    #names = ["Tyler", "Ian", "Nikhil", "Victor"]
  #names.each do |loop_name|
    student = Student.new("Tyler")
    assert_instance_of Student, student #Expected, actual
    #could write these as two seperate tests
    assert_equal "Tyler", student.name
  #end
  end
  # test it has a laptop
  def test_student_has_laptop
    student = Student.new("Alex", laptop=true)
    assert student.has_laptop?
  end
  # test it has cookies

end
