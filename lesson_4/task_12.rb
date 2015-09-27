bascet_hash = {}
bascet_total = 0
loop do
	puts "Введите названиетовара или СТОП для завершения ввода!"
	product_title = gets.chomp.to_s
	break if product_title == 'СТОП'
	puts "Введите количество товара"
	product_count = gets.chomp.to_i
	puts "Введите стоимость за единицу товара"
	product_amout = gets.chomp.to_f
	bascet_hash[product_title] = {amount:product_amout, count:product_count}
	bascet_total += product_amout*product_count
end
puts bascet_hash
puts "Итоговая сумма покупки составляет #{bascet_total} рублей"