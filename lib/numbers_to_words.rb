class String
  define_method(:numbers_to_words) do
    one_to_nine = { "1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine" }
    ten_to_nineteen = { "10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifthteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen" }
    twenty_to_ninety = { "2" => "twenty", "3" => "thirty", "4" => "fourty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety"}
    digits = self.size
    numbers = self.split("")
    result = []
    if digits.eql?(1)
      result.push(one_to_nine.fetch(self))
    elsif ten_to_nineteen.include?(self)
      result.push(ten_to_nineteen.fetch(self))
    elsif digits.eql?(2).&self.to_i.>(19)
      result.push(twenty_to_ninety.fetch(numbers.at(0)))
      result.push(one_to_nine.fetch(numbers.at(1)))
    end
    result.join(" ")
  end
end
