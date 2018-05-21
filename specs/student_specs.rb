require ('minitest/autorun')
require ('minitest/rg')

require_relative("../Student.rb")

class TestStudent < MiniTest::Test
  def test_student_name
    student = Student.new("Greg", "G6")
    assert_equal("Greg", student.name)
  end

  def test_student_cohort
    student = Student.new("Greg", "G6")
    assert_equal("G6", student.cohort)
  end

  def test_set_student_name
    student = Student.new("Greg", "G6")
    student.set_name("Greg R")
    assert_equal("Greg R", student.name)
  end

  def test_set_student_cohort
    student = Student.new("Greg", "G6")
    student.set_cohort("G7")
    assert_equal("G7", student.cohort)
  end

  def test_student_talking
    student = Student.new("Greg", "G6")

    assert_equal("Hello!", student.talk)
  end

  def test_student_favorite_language
    student = Student.new("Greg", "G6")
    student.set_favorite_language("ruby")
    assert_equal("I love ruby", student.favorite_language)
  end

end
