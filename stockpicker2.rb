# Stockpicker 2 #

def stock_picker(days)
	buy_date, sell_date, max_profit = 0, 0, 0
	
	bestbuy = 0
	while bestbuy < days.size do
		bestsell = bestbuy + 1
		while bestsell < days.size do
			if days[bestsell] - days[bestbuy] > max_profit
				buy_date, sell_date = bestbuy, bestsell
				max_profit = days[bestsell] - days[bestbuy]
			end
		bestsell += 1
		end
		bestbuy += 1
	end
	print "#{days[0..-1]}\n"
	puts [buy_date, sell_date]
end


stock_picker([rand(100), rand(100), rand(100), rand(100), rand(100), rand(100), rand(100)])

