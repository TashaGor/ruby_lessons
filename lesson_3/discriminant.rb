puts "Введите первое число"
a = gets.chomp.to_f
puts "Введите второе число"
b = gets.chomp.to_f
puts "Введите третье число"
c = gets.chomp.to_f
discriminant = b*b - 4*a*c;
puts "Дискриминант равен #{discriminant}."
if discriminant < 0
  puts "Корней нет!"
elsif discriminant == 0
  root = -b / (2*a)
  puts "Уравнение имеет один корень равный #{root}."
else
  root1 = (-b - Math.sqrt(discriminant)) / (2*a)
  root2 = (-b + Math.sqrt(discriminant)) / (2*a)
  puts "Уравнение имеет два корня равные #{root1} и #{root2}."
end