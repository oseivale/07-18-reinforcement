

#This method will receive the input from the user

def receive_grade
  puts "Please enter your grade as a %"
    student_grade = gets.chomp.to_i
    while student_grade > 100 || student_grade < 0
      puts "That is not a valid entry. Please enter a grade between 0 and 100."
      student_grade = gets.chomp.to_i
    end
    return student_grade
end

# This method will evaluate the user input and return a statement based on the number grade.
def letter_grade(grade)

  if grade <= 100 && grade >= 90
    puts "Your grade is A+!"
  elsif grade <= 89 && grade >= 85
    puts "Your grade is A!"
  elsif grade <= 84 && grade >= 80
    puts "Your grade is A-!"
  elsif grade <= 79 && grade >= 75
    puts "Your grade is B+!"
  elsif grade <= 74 && grade >= 70
    puts "Your grade is B!"
  elsif grade <= 69 && grade >= 65
    puts "Your grade is B-!"
  elsif grade <= 64 && grade >= 60
    puts "Your grade is C+!"
  elsif grade <= 59 && grade >= 55
    puts "Your grade is C!"
  elsif grade <= 54 && grade >= 50
    puts "Your grade is C-!"
  else
    puts "Your grade is D, please see the professor after class."

  end

end


#This method will set two local variables to the above methods, and return the second method to be called outside the method.
def init
  percent_grade = receive_grade
  student_grade = letter_grade(percent_grade)
  return student_grade
end

finalGrade = init
puts "#{finalGrade}"
