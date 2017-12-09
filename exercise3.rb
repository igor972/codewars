class Exercise3
	# https://www.codewars.com/kata/552c028c030765286c00007d/train/ruby
	def iq_test(numbers)
		# [1, 2, 3, 4, 6, 8, 10]
		arr = numbers.split(' ').map {|num| num.to_i}

		temp = {odd: [], even: []}
		arr.each_with_index do |num, index|
			num.odd? ? temp[:odd] << num : temp[:even] << num
		end

		if temp[:odd].count > temp[:even].count
			return arr.index(temp[:even].first) + 1
		else
			return arr.index(temp[:odd].first) + 1
		end
	end
end

p Exercise3.new.iq_test('1 2 3 4 6 8 10')