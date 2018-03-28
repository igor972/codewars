class Exercise7
	# https://www.codewars.com/kata/51b62bf6a9c58071c600001b/train/ruby
  def solution(number)
    separated = []
    chars = number.to_s.chars
    reference = number.to_s.chars
    ret = ''

    # split by decimals
    chars.each_with_index do |char, index|
      separated << char.ljust(reference.count, '0').to_i
      reference.delete_at(0)
    end

    separated.delete(0)

    separated.each do |piece|
      ret += find_roman_numeral(piece)
    end

    return ret
  end

  def find_roman_numeral(number)
    roman = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }
    str_num = ['', number]

    # return roman numeral if is a perfect match
    return roman.key(number) unless roman.key(number).nil? 

    # find subtraction: ex: 90 -> XC; 9 -> IX
    roman.reverse_each do |ro1|
      roman.each do |ro2|
        if number == (ro1[1] - ro2[1])
          str_num[0] = ro2[0] + ro1[0]
        end
      end
    end

    # find addition: ex: 80 -> LXXX; 30 -> XXX
    if str_num[0].empty?
      roman.reverse_each do |ro|
        while str_num[1] >= ro[1]
          str_num[1] -= ro[1]
          str_num[0] += ro[0]
        end
      end
    end

    return str_num[0]
  end
end

# p Exercise7.new.solution(4)
# p Exercise7.new.solution(9)
# p Exercise7.new.solution(150)
# p Exercise7.new.solution(666)
# p Exercise7.new.solution(999)
# p Exercise7.new.solution(1499)
p Exercise7.new.solution(2017)
