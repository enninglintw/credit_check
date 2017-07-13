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

  def valid?

  end
end
