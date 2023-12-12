require 'rails_helper'

RSpec.describe GradeCalculator do
  let(:students) do
    [
      build_stubbed(:student, s1: 88, s2: 53, s3: 69, s4: 64),
      build_stubbed(:student, s1: 92, s2: 86, s3: 93, s4: 77),
      # Add more student instances as needed
    ]
  end

  describe "#calculate_grades" do
    it "assigns grades and calculates above average correctly" do
      grade_calculator = GradeCalculator.new(students)
      grade_calculator.calculate_grades
binding.pry
      expect(students[0].grade).to eq('C')
      expect(students[0].above_average).to be_

      expect(students[1].grade).to eq('A')
      expect(students[1].above_average).to be_truthy

      # Add more expectations for other students
    end
  end

  describe "#calculate_average_and_above_average" do
    it "calculates average and above average correctly" do
      grade_calculator = GradeCalculator.new(students)
      grade_calculator.send(:calculate_average_and_above_average)

      # Add expectations here based on your implementation
    end
  end

  describe "#calculate_student_grade" do
    it "assigns correct grades based on total score" do
      grade_calculator = GradeCalculator.new(students)
      expect(grade_calculator.send(:calculate_student_grade, 350)).to eq('A')
      expect(grade_calculator.send(:calculate_student_grade, 320)).to eq('B')
      expect(grade_calculator.send(:calculate_student_grade, 290)).to eq('C')
    end
  end

  describe "#calculate_average" do
    it "calculates average correctly" do
      grade_calculator = GradeCalculator.new(students)
      average = grade_calculator.send(:calculate_average, 'B', students)

      # Add expectations here based on your implementation
    end
  end

  describe "#total_score" do
    it "calculates total score correctly" do
      grade_calculator = GradeCalculator.new(students)
      total_score = grade_calculator.send(:total_score, students[0])

      # Add expectations here based on your implementation
    end
  end
end
