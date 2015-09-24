puts "Введите год"
year = gets.chomp.to_i
puts "Введите номер месяца"
month = gets.chomp.to_i
puts "Введите число"
day = gets.chomp.to_i

if year % 4 == 0 && year % 100 != 0 || year % 4 == 0 && year % 100 == 0 && year % 400 == 0 
    m2 = 29
else 
	m2 = 28
end

m1 = m3 = m5 = m7 = m8 = m10 =31
m4 = m6 = m9 = m11 = 30

case month
when 1
	puts "Порядковый номер даты: #{day}"
when 2
	puts "Порядковый номер даты: #{m1 + day}"
when 3
	puts "Порядковый номер даты: #{m1 + m2 + day}"
when 4
	puts "Порядковый номер даты: #{m1 + m2 + m3 + day}"
when 5
	puts "Порядковый номер даты: #{m1 + m2 + m3 + m4 + day}"
when 6
	puts "Порядковый номер даты: #{m1 + m2 + m3 + m4 + m5 + day}"
when 7
	puts "Порядковый номер даты: #{m1 + m2 + m3 + m4 + m5 + m6 + day}"
when 8
	puts "Порядковый номер даты: #{m1 + m2 + m3 + m4 + m5 + m6 + m7 + day}"
when 9
	puts "Порядковый номер даты: #{m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + day}"
when 10
	puts "Порядковый номер даты: #{m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + day}"
when 11
	puts "Порядковый номер даты: #{m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + m10 + day}"
when 12
	puts "Порядковый номер даты: #{m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + m10 + m11 + day}"
end