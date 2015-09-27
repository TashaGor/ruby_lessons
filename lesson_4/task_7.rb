puts "Введите количество студентов:"
student_number = gets.chomp.to_i

arr_rates = []
for i in 1..student_number
	puts "Введите оценку для студента номер #{i} по 100 бальной шкале "
	arr_rates << gets.chomp.to_i
end

students_rate_sum = 0
arr_rates.each do |rate|
	students_rate_sum += rate
end

puts "Средняя оценка группы #{students_rate_sum / student_number}"