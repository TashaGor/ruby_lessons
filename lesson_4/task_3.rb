puts "Введите число для выполнения расчета"
num = gets.chomp.to_i

puts "Введите второе число для выполнения расчета"
num2 = gets.chomp.to_i

#while
i = 1
count_number = 0
summ_number = 0.0 
while i <= num do 
	if i % num2 == 0
	   summ_number = summ_number + i
	   count_number += 1
	end
	i += 1
end
puts "Сумма цикла while равна #{summ_number}"
puts "Среднее арифметическое равно #{summ_number / count_number}"

#until
i = 1
count_number = 0
summ_number = 0.0 
until i > num  do
	if i % num2 == 0
	   summ_number = summ_number + i
	   count_number += 1
	end
    i += 1 
end
puts "Сумма цикла until равна #{summ_number}"
puts "Среднее арифметическое равно #{summ_number / count_number}"

#for 
count_number = 0
summ_number = 0.0 
for n in 1..num 
	if n % num2 == 0
	    summ_number = summ_number + n
	    count_number += 1
	end
end
puts "Сумма цикла for равна #{summ_number}"
puts "Среднее арифметическое равно #{summ_number / count_number}"

#each
count_number = 0
summ_number = 0.0 
(1..num).each do |n|
	if n % num2 == 0
	    summ_number = summ_number + n
	    count_number += 1
	end
 end
puts "Сумма цикла each равна #{summ_number}"
puts "Среднее арифметическое равно #{summ_number / count_number}"