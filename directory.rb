@lineWidth = 50
def print_header
  puts ("The students of my cohort at Makers Academy".center(@lineWidth))
  puts ("-------------".center(@lineWidth))
end

def print_names(students)
	i = 0
	while i < students.length
		puts ("#{i + 1}. #{students[i][:name].capitalize}, #{students[i][:country].capitalize}. Hobbies: #{students[i][:hobbies].capitalize} (#{students[i][:cohort].capitalize} cohort)".center(@lineWidth))
		i += 1
    end
end

def print_footer(names)
	puts ("Overall we have #{names.length} great students".center(@lineWidth))
end

def input_students
	puts ("Please enter the names of the students".center(@lineWidth))
	puts ("To finish, just hit return twice".center(@lineWidth))
	# create an empty array
	students = []
	# get the name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		puts ("Where do you come from?".center(@lineWidth))
		country = gets.chomp
		puts ("What hobbies do you have?".center(@lineWidth))
		hobbies = gets.chomp
		# store the student hash into the array
		students << {:name => name, :cohort => :december, :country => country, :hobbies => hobbies}
		puts ("Now we have #{students.length} students".center(@lineWidth))
		puts ''
		# get the next name from the user
		puts ("What's your name?".center(@lineWidth))
		name = gets.chomp
	end
	# return the array of the students
	students
end

students = input_students
print_header
print_names(students)
print_footer(students)