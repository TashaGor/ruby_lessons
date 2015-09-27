puts "Введите год"
year = gets.chomp.to_i
puts "Введите номер месяца"
month = gets.chomp.to_i
puts "Введите число"
day = gets.chomp.to_i

days_months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

if year % 4 == 0 && year % 100 != 0 || year % 4 == 0 && year % 100 == 0 && year % 400 == 0 
    days_months[1] = 29
end

days_count = day

for i in (1..month-1)
	days_count += days_months[i-1]
end

puts "Порядковый номер даты: #{days_count}"