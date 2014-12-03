@lineWidth = 50
def print_header
  puts ("The students of my cohort at Makers Academy".center(@lineWidth))
  puts ("-------------".center(@lineWidth))
end

def print_names(students)
	i = 0
	while i < students.length
		puts ("#{i + 1}. #{students[i][:name].capitalize}, #{students[i][:country].capitalize}. Hobbies: #{students[i][:hobbies].capitalize} (#{students[i][:cohort]} cohort)".center(@lineWidth))
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
		if country == ''
			country = 'somewhere'
		else country
		end
		puts ("What hobbies do you have?".center(@lineWidth))
		hobbies = gets.chomp
		if hobbies == ''
			hobbies = 'none'
		else hobbies
		end
		puts ("Wich cohort will you join?".center(@lineWidth))
		cohort = gets.chomp
		if cohort == ''
			cohort = 'december'
		else cohort
		end
		# store the student hash into the array
		students << {:name => name, :cohort => cohort.to_sym, :country => country, :hobbies => hobbies}
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