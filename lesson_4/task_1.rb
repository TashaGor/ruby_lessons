puts "Введите число для выполнения расчета"
num = gets.chomp.to_i

#while
i = 1
summ_number = 0.0
while i < num do 
	summ_number = summ_number + i
	i += 1
end
puts "Сумма цикла while равна #{summ_number}"
puts "Среднее арифметическое равно #{summ_number / num}"

#until
i = 1
summ_number = 0.0 
until i >= num  do
	summ_number = summ_number + i
    i += 1 
end
puts "Сумма цикла until равна #{summ_number}"
puts "Среднее арифметическое равно #{summ_number / num}"

#for 
i = 0 
summ_number = 0.0 
for n in i...num 
	summ_number = summ_number + n
    i += 1
end
puts "Сумма цикла for равна #{summ_number}"
puts "Среднее арифметическое равно #{summ_number / num}"

#each
i = 0 
summ_number = 0.0 
(i...num).each do |n|
	summ_number = summ_number + n
    i += 1
    end
puts "Сумма цикла each равна #{summ_number}"
puts "Среднее арифметическое равно #{summ_number / num}"