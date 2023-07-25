def stock_piler(stocks)
	best_profit = 0
	for i in 0..(stocks.size - 1)
		for j in (i + 1)..(stocks.size - 1)
			profit = stocks[j] - stocks[i]
			if profit > best_profit
				best_profit = profit
				best_days = [i,j]
			end			
		end
	end
	best_days
end

sample_stocks = [17,3,6,9,15,8,6,1,18]

p stock_piler(sample_stocks)