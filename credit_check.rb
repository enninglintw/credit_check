class CreditCheck
  def initialize(credit)
    @credit = credit
  end

  def double_every_other_digit
    digits = @credit.split("")
    check_digit_index = digits.count - 1

    digits.each_with_index.map do |digit, index|
      (check_digit_index - index).odd? ? digit.to_i * 2 : digit.to_i
    end
  end

  def sum_digits_over_nine
    double_every_other_digit.map do |digit|
      digit > 9 ? digit.to_s.split("").inject(0) { |sum, digit| sum + digit.to_i } : digit
    end
  end

  def results_summed
    sum_digits_over_nine.inject(0) { |sum, digit| sum + digit }
  end

  def valid?
    results_summed % 10 == 0 ? true : false
  end
end
