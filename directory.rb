
# students into an array
students = [
	{:name => "Sanda", :cohort => :december},
	{:name => "Huy", :cohort => :december},
	{:name => "Stephi", :cohort => :december},
	{:name => "David", :cohort => :december},
	{:name => "Emily", :cohort => :december},
	{:name => "Kieran", :cohort => :december},
	{:name => "Richard", :cohort => :december},
	{:name => "Jacob", :cohort => :december},
	{:name => "Marcin", :cohort => :december},
	{:name => "Gabe", :cohort => :december},
	{:name => "Hannah", :cohort => :december},
	{:name => "Bibiana", :cohort => :december},
	{:name => "Chris", :cohort => :december},
	{:name => "Ptolemy", :cohort => :december},
	{:name => "Luke", :cohort => :december},
	{:name => "Danielle", :cohort => :december},
	{:name => "Josh", :cohort => :december}
]

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

# Nothing happens untill we call the methods

print_header
print_names(students)
print_footer(students)