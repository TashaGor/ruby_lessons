puts "Введите длину первой стороны треугольника"
a = gets.chomp.to_f
puts "Введите длину второй стороны треугольника"
b = gets.chomp.to_f
puts "Введите длину третьей стороны треугольника"
c = gets.chomp.to_f
if a == b && a == c 
	puts "Треугольник равносторонний"
elsif a == b || b == c || c == a
	puts "Треугольник равнобедренный"
else
	puts "Треугольник с разными сторонами"
end

if a > b && a > c
  gyp, cat1, cat2  = a, b, c
elsif b > a && b > c
  gyp, cat1, cat2  = b, a, c	
elsif c > a && c > b
  gyp, cat1, cat2  = c, b, a
end

if gyp && (gyp**2 == cat1**2 + cat2**2)
	puts "Треугольник является прямоугольным"
else 
	puts "Треугольник не прямоугольный"
end