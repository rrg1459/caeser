def caeser(str, mov=0)
	return if mov == 0
	arr = str.split('')
	letters = ('a'..'z').to_a
	crypto = []
	arr.each do |let|
		if letters.include? let
			crypto.push(letters[(letters.index(let) + mov) % letters.count])
		elsif letters.include? let.downcase
			crypto.push(letters[(letters.index(let.downcase) + mov) % letters.count].upcase)
		else
			crypto.push(let)
		end
	end
	return puts crypto.join
end

puts $*[0]

caeser($*[0].to_s, $*[1].to_i) if !$*[1].nil?
