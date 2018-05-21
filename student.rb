class Student

  def initialize(student_name, student_cohort)
    @studentName = student_name
    @studentCohort = student_cohort
  end

  def name
    return @studentName
  end

  def cohort
    return @studentCohort
  end

  def set_name(new_name)
    @studentName = new_name
  end

  def set_cohort(new_cohort)
    @studentCohort = new_cohort
  end

  def talk
    return "Hello!"
  end

  def set_favorite_language(langauge)
    @favorite_language = langauge
  end

  def favorite_language
    return "I love " + @favorite_language
  end

end
