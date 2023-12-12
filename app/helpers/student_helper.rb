module StudentHelper

  def check_below_or_above(student)
    student.above_average ? "Above" : "Below"
  end

  def total_score(student)
    student.s1 + student.s2 + student.s3 + student.s4
  end
end
