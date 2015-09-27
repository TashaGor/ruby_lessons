puts "Введите число для выполнения расчета"
num = gets.chomp.to_i

summ_number = 0.0
(1..num).each do |n|
	summ_number += n**n
end
puts "Сумма степеней равна #{summ_number}"