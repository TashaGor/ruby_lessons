puts "Привет, как тебя зовут?"
name = gets.chomp
puts "Какой у тебя рост?"
heigh = gets.chomp.to_i
puts "Привет, #{name}!"
puts "Твой отпимальный вес #{heigh - 110} кг"