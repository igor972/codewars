class Exercise1
	# https://www.codewars.com/kata/5626b561280a42ecc50000d1/train/ruby
	def sum_dig_pow(a, b)
		list = []
		(a..b).each do |n|
			temp = 0
			n.to_s.chars.each_with_index do |c, index|
				temp += c.to_i ** (index + 1)
			end

			list << n if n == temp

		end

	  return list
	end
end

p Exercise1.new.sum_dig_pow()
