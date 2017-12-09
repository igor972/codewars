class Exercise2
	# https://www.codewars.com/kata/559536379512a64472000053/train/ruby
	def play_pass(str, n)
		str.upcase!

		tmp = []
		str.chars do |char|
			if char.between?('A', 'Z')
				tmp << get_next_letter(char, n)
			else
				if char.between?('0', '9')
					tmp << 9 - char.to_i
				else
					tmp << char
				end
			end
		end
		ret = []
		tmp.each_with_index do |l, index| 
			begin
				if index.odd?
					ret << l.downcase
				else
					ret << l.upcase
				end
			rescue
				ret << l
			end
		end

		return ret.reverse.join
	end

	def get_next_letter(letter, count)
		base = 'A'.upto('Z').to_a
		new_index = 0
		base.each_with_index do |l, index|
			if letter == l
				new_index = index + count
			end
		end

		return base.fetch(new_index) {base[new_index - 26]}
	end

end

p Exercise2.new.play_pass('BORN IN 2015!', 1)
