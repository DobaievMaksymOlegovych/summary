require "rexml/document"
current_path = File.dirname(__FILE__)
file_name = current_path + "/people.xml"
abort "Файл не знайдено" unless File.exist?(file_name)

file = File.new(file_name)
doc = REXML::Document.new(file)
doc.elements.each("people/person") do |item|
	name = item.attributes["name"]
	old = item.attributes["old"]
	mail = item.attributes["mail"]
	number = item.attributes["number"]
	profesion = item.attributes["profesion"]
	image = item.attributes["img"]
 
a = "<!DOCTYPE html>
<html>
<body>
	<h1>#{name}</h1>
	<p>Вік #{old} роки</p>
	<p>Почта: #{mail}</p>
	<p>Спецільність: #{profesion}</p>
	<p>Номер: #{number}</p>
	<img #{image}>	
	</img>
</body>
</html>"


file = File.new("#{name}.html", "a+")
file.puts(a)
file.close
end
puts 'Візитку створено)))'