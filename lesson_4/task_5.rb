puts "Введите число для выполнения расчета"
num = gets.chomp.to_i

factorial = 1
(1..num).each do |n|
	factorial = factorial*n
end
puts "Факториал равен #{factorial}"