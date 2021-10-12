def sum_of_3_or_5_multiples(number) 
  if input_a_nat_num?(number) == false
    return "Please enter a natural number"
  end
  nat_num_into_array = (1...number).to_a
  total_sum = 0
  nat_num_into_array.each do |i|
    if multiple_of_3_or_5?(i) == true
      total_sum += i
    end
  end
  return total_sum
end

def multiple_of_3_or_5?(number)
  number % 3 == 0 || number % 5 == 0 ? (return true) : (return false)
end

def input_a_nat_num?(input)
  if !input.is_a? Integer
    return false
  end
  input >= 0 ? (return true) : (return false)
end
