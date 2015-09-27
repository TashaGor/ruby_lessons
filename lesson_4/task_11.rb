i = 1 
vovels = ['a','e','o','u','i','y']
vovels_hash = {}
('a'..'z').each do |letter|
	vovels_hash[letter] = i if vovels.include?(letter) 
	i += 1 
end	
puts vovels_hash