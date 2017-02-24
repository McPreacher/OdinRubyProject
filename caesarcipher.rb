# Caesar Cipher #



puts "Please enter your message: "
message = gets.chomp
puts "Please enter your key: "
key = gets.chomp

def shift_char(m, base, key)
	(((m.ord - base) + key.to_i) % 26 + base).chr
end

def cipher(message, key)
	message.chars.map do |m|
		case m
		when 'a'..'z'
			shift_char(m, 'a'.ord, key)
		when 'A'..'Z'
			shift_char(m, 'A'.ord, key)
		else
			m
		end
	end.join
end

decipher = cipher(message, key)
p decipher


