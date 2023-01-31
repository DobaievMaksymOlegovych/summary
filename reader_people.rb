require "rexml/document"
current_path = File.dirname(__FILE__)
file_name = current_path + "/people.xml"
puts file_name
abort "Файл не знайдено" unless File.exist?(file_name)

file = File.new(file_name)
doc = REXML::Document.new(file)
doc.elements.each("people/person") do |item|
	name = item.attributes["name"]
	old = item.attributes["old"]
	mail = item.attributes["mail"]
	number = item.attributes["number"]
	profesion = item.attributes["profesion"]
	puts "Ім'я: #{name}
Вік: #{old}
Електронна почта: #{mail}
Мобільний номер: #{number}
Спеціальність: #{profesion}"
end 
file.close