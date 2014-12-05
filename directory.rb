@students = []
@lineWidth = 50
def print_header
  puts ("The students of my cohort at Makers Academy".center(@lineWidth))
  puts ("-------------".center(@lineWidth))
end

def print_list
	i = 0
	while i < @students.length
		puts ("#{i + 1}. #{@students[i][:name].capitalize}, #{@students[i][:country].capitalize}. Hobbies: #{@students[i][:hobbies].capitalize} (#{@students[i][:cohort]} cohort)".center(@lineWidth))
		i += 1
    end
end

def print_footer
	puts ("Overall we have #{@students.length} great students".center(@lineWidth))
end

def input_students
	puts ''
	puts ("Please enter the names of the students".center(@lineWidth))
	puts ("To finish, just hit return twice".center(@lineWidth))
	# get the name
	name = gets.chop
	# while the name is not empty, repeat this code
	while !name.empty? do
		puts ("Where do you come from?".center(@lineWidth))
		country = gets.chop
		if country == ''
			country = 'somewhere'
		else country
		end
		puts ("What hobbies do you have?".center(@lineWidth))
		hobbies = gets.chop
		if hobbies == ''
			hobbies = 'none'
		else hobbies
		end
		puts ("Wich cohort will you join?".center(@lineWidth))
		cohort = gets.chop
		if cohort == ''
			cohort = 'december'
		else cohort
		end
		# store the student hash into the array
		@students << {:name => name, :cohort => cohort.to_sym, :country => country, :hobbies => hobbies}
		if @students.length == 1
			puts ('Now we have 1 student'.center(@lineWidth))
			puts ''
		else
		puts ("Now we have #{@students.length} students".center(@lineWidth))
		puts ''
		end
		# get the next name from the user
		puts ("What's your name?".center(@lineWidth))
		name = gets.chop
	end
end

def list_no_list
	if  @students.length > 0
		print_header
		print_list
		print_footer
	else
		puts ('No students have been added.'.center(@lineWidth))
	end
end

def save_students
	# Open the file for writing
	file = File.open("students.csv", "w")
	# iterate over the array of students
	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "9. Exit"
end

def process(selection)
	case selection
      when "1"
      	input_students
      when "2"
      	list_no_list
      when "3"
      	save_students
      when "9"
      	exit # this will close the program
      else
      	puts 'I don\'t know what you meant, try again'
    end
end

def interactive_menu
   loop do
	print_menu
	process(gets.chomp)
	end		
end

interactive_menu


