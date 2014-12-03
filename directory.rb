def print_header
  puts "The students of my cohort at Makers Academy" 
  puts "-------------"
end

def print_names(students)
  students.each do |student|
  	puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
puts "Overall we have #{names.length} great students"
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# create an empty array
	students = []
	# get the name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# store the student hash into the array
		students << {:name => name, :cohort => :december}
		puts "Now we have #{students.length} students"
		# get the next name from the user
		name = gets.chomp
	end
	# return the array of the students
	students
end

students = input_students
print_header
print_names(students)
print_footer(students)