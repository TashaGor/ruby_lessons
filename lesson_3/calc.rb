puts "Введите первое число"
a = gets.chomp.to_f
puts "Введите второе число"
b = gets.chomp.to_f
puts "Введите оператор"
oper = gets.chomp
if oper == '+'
  result = a + b
elsif oper == '-'
  result = a - b
elsif oper == '*'
  result = a * b
elsif oper == '/'
  result = a / b
else
  puts "Неверная операция"
end
puts result