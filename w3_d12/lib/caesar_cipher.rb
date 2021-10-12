def caesar_cipher(input, num)
  #checking if the first argument is a string
  if input_a_string?(input) == false
    return "Please enter a valid input: string and integer"
  end

  # checking if the second arugment is an integer
  if input_a_integer?(num) == false
    return "Please enter a valid input: string and integer"
  end

  # the main work
  cipher_length = input.length
  encrypted_message = Array.new(cipher_length, 0) 
  cipher_length.times do |i|
    if input[i].ord >= 'A'.ord && input[i].ord <= 'Z'.ord
      encrypted_message[i] = ((input[i].ord - 'A'.ord + num) % 26 + ('A'.ord)).chr
    elsif input[i].ord >= 'a'.ord && input[i].ord <= 'z'.ord
      encrypted_message[i] = ((input[i].ord - 'a'.ord + num) % 26 + ('a'.ord)).chr
    else
      encrypted_message [i] = input[i]
    end
  end
  return encrypted_message.join
end

def input_a_integer?(input)
  return input.is_a? Integer
end

def input_a_string?(input)
  return input.is_a? String
end

=begin
puts caesar_cipher("Apple-Pie", 3)
puts caesar_cipher(3, 4)
puts caesar_cipher("cat", 4.71)
puts caesar_cipher("cat", "cat")
caesar_cipher(Apple-Piezzz, 3)
=end
