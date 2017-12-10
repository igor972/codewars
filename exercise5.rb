class Exercise5
	# https://www.codewars.com/kata/54a91a4883a7de5d7800009c/train/ruby
	def increment_string(str)
		return '1' if str.empty?
	  idx = str.chars.each_with_index.map {|char, index| index if char.between?('0', '9') }.compact
	  if idx.empty?
	  	return str += '1'
	  elsif str.length != idx.last + 1
	  	return str += '1'
	  else
	  	temp = str[idx[0]..idx[-1]]
	  	return str.gsub(temp, temp.next)
	  end
	end
end

  p Exercise5.new.increment_string('f00b4r')