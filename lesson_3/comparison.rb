puts "Введите число"
a = gets.chomp.to_i
if a % 2 == 0
	puts "#{a} - четное число"
else
	puts "#{a} - нечетное число"
end