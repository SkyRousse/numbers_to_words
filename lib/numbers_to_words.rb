class String
  define_method(:numbers_to_words) do
    one_to_nine = { "1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine" }
    ten_to_nineteen = { "10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifthteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen" }
    twenty_to_ninety = { "2" => "twenty", "3" => "thirty", "4" => "fourty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety"}
    digits = self.size

    result = []
    if (digits%3).eql?(0)
      groups_of_three = self.scan(/.../)
    elsif (digits%3).eql?(1)
      new_number = "00".concat(self)
      groups_of_three = new_number.scan(/.../)
    else
      new_number = "0".concat(self)
      groups_of_three = new_number.scan(/.../)
    end
    groups_of_three.each do |group|
      group_result = []
      numbers = group.scan(/./)
      if numbers.at(0).to_i.>(0)
        group_result.push(one_to_nine.fetch(numbers.at(0)))
        group_result.push("hundred")
        numbers.shift()
        numbers.unshift("0")
      end
      if numbers.at(0).to_i.eql?(0).&numbers.at(1).to_i.eql?(0).&numbers.at(2).to_i.>(0)
        group_result.push(one_to_nine.fetch(numbers.at(2)))
      elsif numbers.at(0).to_i.eql?(0).&numbers.at(1).to_i.>(1)
        group_result.push(twenty_to_ninety.fetch(numbers.at(1)))
        group_result.push(one_to_nine.fetch(numbers.at(2)))
      elsif numbers.at(0).to_i.eql?(0).&numbers.at(1).to_i.eql?(1)
        group_result.push(ten_to_nineteen.fetch(numbers.at(1).concat(numbers.at(2))))
      end
      result_length = group_result.length
      if result_length.>(0)
        grouped_result = group_result.join(" ")
        result.push(grouped_result)
      end
    end
    if (4..6).include?(digits)
      result.insert(1, "thousand")
    elsif (7..9).include?(digits)
      result.insert(1, "million")
      result.insert(3, "thousand")
    elsif (10..12).include?(digits)
      result.insert(1, "billion")
      result.insert(3, "million")
      result.insert(5, "thousand")
    end
    result.join(" ")
  end
end
