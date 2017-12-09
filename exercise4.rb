class Exercise4
	# https://www.codewars.com/kata/525f3eda17c7cd9f9e000b39/train/ruby
	def zero(val = 0)
		if val == 0
			return 0
		else
			return get_operator(val, 0)
		end
	end

	def one(val = 1)
		if val == 1
			return 1
		else
			return get_operator(val, 1)
		end
	end

	def two(val = 2)
		if val == 2
			return 2
		else
			return get_operator(val, 2)
		end
	end

	def three(val = 3)
		if val == 3
			return 3
		else
			return get_operator(val, 3)
		end
	end

	def four(val = 4)
		if val == 4
			return 4
		else
			return get_operator(val, 4)
		end
	end

	def five(val = 5)
		if val == 5
			return 5
		else
			return get_operator(val, 5)
		end
	end

	def six(val = 6)
		if val == 6
			return 6
		else
			return get_operator(val, 6)
		end
	end

	def seven(val = 7)
		if val == 7
			return 7
		else
			return get_operator(val, 7)
		end
	end

	def eight(val = 8)
		if val == 8
			return 8
		else
			return get_operator(val, 8)
		end
	end

	def nine(val = 9)
		if val == 9
			return 9
		else
			return get_operator(val, 9)
		end
	end

	def plus(val)
		return '+' + val.to_s
	end

	def minus(val)
		return '-' + val.to_s
	end

	def times(val)
		return '*' + val.to_s
	end

	def divided_by(val)
		return '/' + val.to_s
	end

	def get_operator(val, num)
		values = val.split('')
		if values[0] == '+'
			return num + values[1].to_f
		
		elsif values[0] == '-'
			return num - values[1].to_f
		
		elsif values[0] == '*'
			return num * values[1].to_f
		
		elsif values[0] == '/'
			return num / values[1].to_f
		end
	end
end

  p Exercise4.new.seven(Exercise4.new.times(Exercise4.new.five()))
  p '------'
  p Exercise4.new.four(Exercise4.new.plus(Exercise4.new.nine()))
  p '------'
  p Exercise4.new.eight(Exercise4.new.minus(Exercise4.new.three()))
  p '------'
  p Exercise4.new.six(Exercise4.new.divided_by(Exercise4.new.two()))
  p '------'