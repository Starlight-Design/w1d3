puts "Enter any number here. No decimals!"
num = gets.chomp.to_i

def to_roman(number)
  is_active = true
  result = ""
  while(is_active)
    if (number - 1000 >= 0)
      result << "M"
      number = number - 1000
    elsif (number >= 900)
      result << "CM"
      number = number - 900
    elsif (number - 500 >= 0)
      result << "D"
      number = number - 500
    elsif (number >= 400)
      result << "CD"
      number = number - 400
    elsif (number - 100 >= 0)
      result << "C"
      number = number - 100
    elsif (number >= 90)
      result << "XC"
      number = number - 90
    elsif (number - 50 >= 0)
      result << "L"
      number = number - 50
    elsif (number >= 40)
      result << "XL"
      number = number - 40
    elsif (number - 10 >= 0)
      result << "X"
      number = number - 10
    elsif (number >= 9)
      result << "IX"
      number = number - 9
    elsif (number - 5 >= 0)
      result << "V"
      number = number - 5
    elsif (number >= 4)
      result << "IV"
      number = number - 4
    elsif (number - 1 >= 0)
      result << "I"
      number = number - 1
    else 
      is_active = false
    end
  end
  puts result
end 

to_roman(num)