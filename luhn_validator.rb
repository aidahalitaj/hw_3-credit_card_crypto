# Module for algorithm Luhn Validator
module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    sum_odd = sum_double = 0
    # TODO: use the integers in nums_a to validate its last check digit
    nums_a = number.to_s.chars.map(&:to_i)
    nums_a.reverse.each_slice(2) do |odd, even|
      # remove odd numbers from reversed array and add them to sum_odd
      sum_odd += odd.to_i

      double = even.to_i * 2
      double -= 9 if double >= 10
      sum_double += double
    end
    ((sum_odd + sum_double) % 10).zero?
  end
end
