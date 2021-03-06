def roman_numeral num
  thousand = (num / 1000)
  hundred  = (num % 1000 / 100)
  ten      = (num %  100 /  10)
  one      = (num %   10 /   1)

  roman = ''

  roman << 'M' * thousand

  if hundred == 9
    roman << 'CM'
  elsif hundred == 4
    roman << 'CD'
  else
    roman << 'D' * (num % 1000 / 500)
    roman << 'C' * (num %  500 / 100)
  end

  if ten == 9
    roman << 'XC'
  elsif ten == 4
    roman << 'XL'
  else
    roman << 'L' * (num % 100 / 50)
    roman << 'X' * (num %  50 / 10)
  end

  if one == 9
    roman << 'IX'
  elsif one == 4
    roman << 'IV'
  else
    roman << 'V' * (num % 10 / 5)
    roman << 'I' * (num %  5)
  end
  
  return roman
end

puts(roman_numeral(1999))
