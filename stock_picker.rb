def stock_picker(array)

	buy_day = 0
	sell_day = 0
	bought_day = 0
	sold_day = 0
	best_buy_and_sell_date = []
	diff = 0
	profit = 0
	sorted_profits = [0]

	(array.size - 1).times do |x|
		
			(array.size - 1).times do |i|

				buy_day = array[-2 - i]
				sell_day = array[-1]
				diff = array[-1] - array[-2 - i]

					if diff > sorted_profits[-1]

						sorted_profits = sorted_profits.push(diff)
						bought_day = buy_day
						sold_day = sell_day
						best_buy_and_sell_date = best_buy_and_sell_date.push(array.index(buy_day))
						best_buy_and_sell_date = best_buy_and_sell_date.push(array.index(sell_day))
					end
			end
	end
	puts best_buy_and_sell_date[-2..-1]
	puts "It's best to buy on day #{best_buy_and_sell_date[-2]} and best to sell on #{best_buy_and_sell_date[-1]}
				to get a profit of #{sorted_profits[-1]}"

	return  best_buy_and_sell_date[-2..-1]

end


stock_picker([17,6,3,9,15,8,6,1,10,5,16])