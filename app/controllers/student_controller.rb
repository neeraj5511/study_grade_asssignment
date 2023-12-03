class StudentController < ApplicationController
  def index
    @students = Student.all
    grade_calculator = GradeCalculator.new(@students)
    grade_calculator.calculate_grades
    @grades_count = @students.group_by(&:grade).transform_values(&:count)
    @above_average_count = @students.count { |student| student.above_average }
    @below_average_count = @students.count { |student| !student.above_average }
  end
end
