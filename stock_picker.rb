def stock_picker(array)

	diff = 0

	profit = 0

	sorted_profits = []

	if array.max == array[0]
		array.shift
	end

	if array.min == array[-1]
		array.pop
	end

	puts "array size starting is #{array.size}"

	(array.size - 1).times do |x|

		puts "this is the x #{x}"

		if x == 0

			(array.size - (x+1)).times do |i|
				puts "this is the i  #{i}"

				puts diff = array[-1] - array[-2 - i]
			
			end

		else

			(array.size - 1).times do |i|
			puts "this is the i  #{i}"

			puts diff = array[-1] - array[-2 - i]


			end

			sorted_profits = sorted_profits.push(diff)

		end

		puts "array has been #{array.pop} popped"
		puts array

		puts "array size is #{array.size}"
	end

	puts sorted_profits.sort.reverse

end


stock_picker([17,3,6,9,15,8,6,1,10])