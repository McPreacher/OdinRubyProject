# substrings2 #

puts "Please enter your phrase: "
init_entry = gets.chomp

def substrings(entry, dictionary)
	results = Hash.new(0)
	
	entry.split.each do |word|
		dictionary.each do |dict|
			if word =~ /#{dict}/
				results[dict] += 1
			end
		end
	end
	puts results
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings(init_entry, dictionary)
