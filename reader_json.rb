require 'json'

file = File.read('summary.json')
people = JSON.parse(file)

puts 'В нас є резюме таких людей:'
puts people.keys
puts 'Яку кандидатуру бажаєте переглянути?'
choise = gets.chomp
people.each do |key, value|
	if choise == key 
		puts key
		puts "Вік: #{value['Вік']}"
		puts "Номер: #{value['Номер']}"
		puts "Пошта: #{value['Пошта']}"
		puts "Професія: #{value['Професія']}"
		puts "Освіта: #{value['Освіта']}"
	end 
end 