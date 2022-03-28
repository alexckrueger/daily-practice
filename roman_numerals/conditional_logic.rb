# Goal: create a function that converts a number into roman numerals
# 1000 = M
# 500 = D
# 100 = C
# 50 = L
# 10 = X
# 5 = V
# 1 = I

def roman_numeral(number)

  # An attempt at something else
  # to_numerals = {"M" => 1000, D: 500, C: 100, L: 50, X: 10, V: 5, I: 1}

  # puts to_numerals["M"]
  # numerals = []

  # (number/to_numerals["M"]).times do 
  #   numerals << to_numerals.key(1000)
  # end
  # number = number - (number/to_numerals["M"] * to_numerals["M"])
  # end of attempt


  # identify and correlate number to letters

  roman_m = number / 1000
  number = number - (roman_m * 1000)

  roman_d = number / 500
  number = number - (roman_d * 500)

  roman_c = number / 100
  number = number - (roman_c * 100)

  roman_l = number / 50
  number = number - (roman_l * 50)

  roman_x = number / 10
  number = number - (roman_x * 10)

  roman_v = number / 5
  number = number - (roman_v * 5)

  roman_i = number
  number = number - (roman_i)

  # replace as needed and input into numerals array

  numerals = []

  roman_m.times do
    numerals << "M"
  end

  # 900
  if roman_d == 1 && roman_c == 4
    numerals << "CM"
    roman_d = 0
    roman_c = 0
  end

  roman_d.times do
    numerals << "D"
  end

  #400
  if roman_c == 4
    numerals << "CD"
    roman_c = 0
  end
  
  roman_c.times do
    numerals << "C"
  end

  #90
  if roman_l == 1 && roman_x == 4
    numerals << "XC"
    roman_l = 0
    roman_x = 0
  end

  roman_l.times do
    numerals << "L"
  end

  #40
  if roman_x == 4
    numerals << "XL"
    roman_x = 0
  end

  roman_x.times do
    numerals << "X"
  end

  #9
  if roman_v == 1 && roman_i == 4
    numerals << "IX"
    roman_v = 0
    roman_i = 0
  end

  roman_v.times do
    numerals << "V"
  end

  #4
  if roman_i == 4
    numerals << "IV"
    roman_i = 0
  end

  roman_i.times do
    numerals << "I"
  end

  p numerals.join

end

roman_numeral(2014)