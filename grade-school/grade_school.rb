class School
  def initialize
    @array_of_student = []
    @array_of_grade = []
  end
  def add(name,grade)
    @array_of_student.push(name)
    @array_of_grade.push(grade)
  end

  def students(grade)
    output = []
    (0..@array_of_grade.length-1).each do |g|
      output.push(@array_of_student[g]) if @array_of_grade[g] == grade
    end
    output.sort
  end

  def students_by_grade
    output = []
    student_array = []
    grade_array =[]
    (0..@array_of_grade.length-1).each do |g|
      grade_array.push(@array_of_grade[g])
      student_array.push(@array_of_student[g])
    end
    uniq_grade = grade_array.uniq.sort
    uniq_grade.each do |grade|
      op = Hash.new
      std=[]
      (0..@array_of_grade.length-1).each do |g|
        if @array_of_grade[g] == grade
          std.push(@array_of_student[g])
        end
      end
      std = std.sort
      op[:grade] = grade
      op[:students] = std
      output.push(op)
    end
    output
  end
end
