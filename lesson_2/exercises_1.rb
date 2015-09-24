puts "Привет, как тебя зовут?"
name = gets.chomp
puts "Какой у тебя рост?"
heigh = gets.chomp.to_i
puts "Привет, #{name}!"
if heigh <= 110 
	puts "#{name}, сначала подрасти"
else
    puts "Твой отпимальный вес #{heigh - 110} кг"
end