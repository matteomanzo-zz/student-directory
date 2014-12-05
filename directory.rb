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
	name = STDIN.gets.chop
	# while the name is not empty, repeat this code
	while !name.empty? do

		puts ("Where do you come from?".center(@lineWidth))
		country = STDIN.gets.chop
		if country == '' then country = 'somewhere' end
	
		puts ("What hobbies do you have?".center(@lineWidth))
		hobbies = STDIN.gets.chop
		if hobbies == '' then hobbies = 'none' end
	
		puts ("Wich cohort will you join?".center(@lineWidth))
		cohort = STDIN.gets.chop
		if cohort == '' then cohort = 'december' end

		# add the student hash into the array
		add_student(name, cohort, country, hobbies)
		
		if @students.length == 1
			puts ('Now we have 1 student'.center(@lineWidth))
			puts ''
		else
			puts ("Now we have #{@students.length} students".center(@lineWidth))
			puts ''
		end

		# get the next name from the user
		puts ("What's your name?".center(@lineWidth))
		name = STDIN.gets.chop
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

def add_student(name, cohort, country, hobbies)
	@students << {:name => name, :cohort => cohort.to_sym, :country => country, :hobbies => hobbies}
end

def save_students
	# Open the file for writing
	file = File.open("students.csv", "w")
	# iterate over the array of students
	@students.each do |student|
		student_data = [student[:name].capitalize!, student[:cohort], student[:country].capitalize!, student[:hobbies].capitalize!]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end

def load_students(filename = "students.csv")
	file = File.open(filename, "r")
	file.readlines.each do |line|
		name, cohort, country, hobbies = line.chomp.split(',')
		add_student(name, cohort, country, hobbies)
	end
	file.close
end

def try_load_students
	filename = ARGV.first # first argument from the command-line
	return if filename.nil? # exit the method if it isn't given
	if File.exists?(filename) # if it exists
		load_students(filename)
		puts "Loaded #{@students.length} from #{filename}"
	else # if it doesn't exist
		puts "Sorry, #{filename} doesn't exist."
		exit # quit the program 
	end
end
	

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "4. Load the list from students.csv"
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
      when "4"
      	load_students
      when "9"
      	exit # this will close the program
      else
      	puts 'I don\'t know what you meant, try again'
    end
end

def interactive_menu
	loop do
		print_menu
		process(STDIN.gets.chomp)
	end		
end

try_load_students
interactive_menu


