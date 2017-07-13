require "minitest/autorun"
require_relative "credit_check"

class TestCreditCheck < Minitest::Test
  def setup
    @credit_check = CreditCheck.new("4929735477250543")
  end

  def test_double_every_other_digit
    assert_equal [8, 9, 4, 9, 14, 3, 10, 4, 14, 7, 4, 5, 0, 5, 8, 3], @credit_check.double_every_other_digit
  end

  def test_sum_digits_over_nine
    assert_equal [8, 9, 4, 9, 5, 3, 1, 4, 5, 7, 4, 5, 0, 5, 8, 3], @credit_check.sum_digits_over_nine
  end

  def test_valid
    assert_equal true, @credit_check.valid?
  end
end
