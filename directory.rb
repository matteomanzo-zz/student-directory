def print_header
  print "The students of my cohort at Makers Academy\n-------------\n"
end

def print_names(students)
	i = 0
	while i < students.length
  	print "#{i + 1}. #{students[i][:name].capitalize}, #{students[i][:country].capitalize}. Hobbies: #{students[i][:hobbies].capitalize} (#{students[i][:cohort].capitalize} cohort)\n"
  	i += 1
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
		puts "Where do you come from?"
		country = gets.chomp
		puts "What hobbies do you have?"
		hobbies = gets.chomp
		# store the student hash into the array
		students << {:name => name, :cohort => :december, :country => country, :hobbies => hobbies}
		print "Now we have #{students.length} students\n"
		# get the next name from the user
		puts "What's your name?"
		name = gets.chomp
	end
	# return the array of the students
	students
end

students = input_students
print_header
print_names(students)
print_footer(students)