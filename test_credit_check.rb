require "minitest/autorun"
require_relative "credit_check"

class TestCreditCheck < Minitest::Test
  def setup
    @credit_check_1 = CreditCheck.new("4929735477250543")
  end

  def test_into_array
    assert_equal [4, 9, 2, 9, 7, 3, 5, 4, 7, 7, 2, 5, 0, 5, 4, 3], @credit_check_1.into_array
  end

  def test_double_every_other_digit
    assert_equal [8, 9, 4, 9, 14, 3, 10, 4, 14, 7, 4, 5, 0, 5, 8, 3], @credit_check_1.double_every_other_digit
  end

  def test_sum_digits_over_nine
    assert_equal [8, 9, 4, 9, 5, 3, 1, 4, 5, 7, 4, 5, 0, 5, 8, 3], @credit_check_1.sum_digits_over_nine
  end

  def test_results_summed
    assert_equal 80, @credit_check_1.results_summed
  end

  def test_valid
    assert_equal true, @credit_check_1.valid?
  end
end
