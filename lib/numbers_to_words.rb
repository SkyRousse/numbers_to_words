class Fixnum
  define_method(:numbers_to_words) do
    one_to_nine = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }
    ten_to_nineteen = { 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifthteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    twenty_to_ninety = { 20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
    digits = self.to_s.size
    if digits.eql?(1)
      one_to_nine.fetch(self)
    elsif (10..19).include?(self)
      ten_to_nineteen.fetch(self)
    elsif digits.eql?(2).&self.>(19)
      twenty_to_ninety.fetch(self)
    end
  end
end
