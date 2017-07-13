class CreditCheck
  def initialize(credit)
    @credit = credit
  end

  def into_array
    @credit.split("").map(&:to_i)
  end

  def double_every_other_digit
    check_digit_index = into_array.count - 1

    into_array.each_with_index.map do |digit, index|
      (check_digit_index - index).odd? ? digit * 2 : digit
    end
  end

  def sum_digits_over_nine
    double_every_other_digit.map do |digit|
      digit > 9 ? digit.to_s.split("").map(&:to_i).inject(0) { |sum, digit| sum + digit } : digit
    end
  end

  def results_summed
    sum_digits_over_nine.inject(0) { |sum, digit| sum + digit }
  end

  def valid?
    results_summed % 10 == 0 ? true : false
  end
end
