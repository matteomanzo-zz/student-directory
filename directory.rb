def print_header
  print "The students of my cohort at Makers Academy\n-------------\n"
end

def print_names(students)
  students.each_with_index do |student, i|
  	if student[:name].length < 12
  	print "#{i + 1}. #{student[:name].capitalize} (#{student[:cohort].capitalize} cohort)\n"
    end
  end
end

def print_footer(names)
print "Overall we have #{names.length} great students\n"
end

def input_students
	print "Please enter the names of the students\nTo finish, just hit return twice\n"
	# create an empty array
	students = []
	# get the name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# store the student hash into the array
		students << {:name => name, :cohort => :december}
		print "Now we have #{students.length} students\n"
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