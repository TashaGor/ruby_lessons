fibonacci = []
for i in 0..100
	if i == 0
		fibonacci[i] = 0
	elsif i == 1
		fibonacci[i] = 1
	else
		fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2]
	end
end
puts fibonacci