card_number = "342804633855673"

valid = false

card_number = card_number.reverse.chars
number = card_number.map do |num|
  num.to_i
end

doubled = number.map.with_index do |num, index|
  if index.odd?
    num * 2
  else
    num
  end
end

summed_over_ten = doubled.map do |num|
  if num >= 10
    new_array = num.to_s.chars
    new_num = new_array[0].to_i + new_array[1].to_i
    new_num
  else
    num
  end
end.reduce(:+)

if summed_over_ten % 10 == 0
  valid = true
  puts "The number is valid!"
else
  puts "The number is invalid!"
end
