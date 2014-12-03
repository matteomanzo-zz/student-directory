
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
]
# Printing them
puts "The students of my cohort at Makers Academy"
puts "-------------"

students.each do |student|
	puts student
end
# finally, we print the total
puts "Overall we have #{students.length} great students"