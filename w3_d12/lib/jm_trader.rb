def jm_trader(daily_prices_array)
  # Check for correct input datatype
  if !daily_prices_array.is_a? Array
    return "Please provide an array"
  end
   
  # Storage
  # Where to put the optimal trading strategy
  best_timing = []
  # Where to put the current max gain during loops
  current_max_gain = 0

  # Get the number of days
  total_number_of_days = daily_prices_array.length
  # Cbeck if the data provided is insufficient
  if total_number_of_days < 2
    return ("You did not provide enough data")
  end

  # Main loop #
  # For each day of the trading range
  total_number_of_days.times do |i|
    # Calcultate the number of corresponding remaining days 
    number_of_remaining_days = total_number_of_days - (i + 1)
    #For each of those remaining days
    number_of_remaining_days.times do |j|
      k = (i + j) + 1
      # Calculate potential benefit
      potential_benefit = daily_prices_array[k].to_i - daily_prices_array[i].to_i
      #If that potential benefit is the new max, register it
      if current_max_gain < potential_benefit 
        current_max_gain = potential_benefit
        best_timing = [i, k]
      end
    end
  end
  # Don't trade if there's nothing to gain
  if current_max_gain == 0
    return "Don't trade, it isn't worth it"
  end
  return best_timing
end

