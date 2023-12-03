class GradeCalculator
	def initialize(student)
    @students = student
  end

  def calculate_grades
    @students.each do |student|
      total_score = student.s1 + student.s2 + student.s3 + student.s4
      student.grade = calculate_student_grade(total_score)
    end
    calculate_average_and_above_average
  end

  private

  def calculate_average_and_above_average
    grades = @students.group_by(&:grade)

    grades.each do |grade, students|
      average_score = calculate_average(grade, students)
      students.each do |student|
        student.above_average = student.grade == grade && total_score(student) >= average_score
      end
    end
  end

  def calculate_average(grade, students)
    scores = students.map { |s| total_score(s) }
    scores.sum / scores.length.to_f
  end

  def total_score(student)
    student.s1 + student.s2 + student.s3 + student.s4
  end

  def calculate_student_grade(total_score)
    case total_score
    when 340..Float::INFINITY
      'A'
    when 300.. 339
      'B'
    else
      'C'
    end
  end
end