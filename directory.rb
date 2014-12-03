
# students into an array
students = [
	"Sanda",
	"Huy",
	"Stephi",
	"David",
	"Emily",
	"Kieran",
	"Richard",
	"Jacob",
	"Marcin",
	"Gabe",
	"Hannah",
	"Bibiana",
	"Chris",
	"Ptolemy",
	"Luke",
	"Danielle",
	"Josh"
]

def print_header
  puts "The students of my cohort at Makers Academy" 
  puts "-------------"
end

def print_names(names)
  names.each do |name|
  	puts name
  end
end

def print_footer(names)
puts "Overall we have #{names.length} great students"
end

# Nothing happens untill we call the methods

print_header
print_names(students)
print_footer(students)