require "minitest/autorun"
require_relative "credit_check"

class TestCreditCheck < Minitest::Test
  def setup
    @credit_check_1 = CreditCheck.new("4929735477250543")
    @credit_check_2 = CreditCheck.new("79927398713")
    @credit_check_3 = CreditCheck.new("5541808923795240")
    @credit_check_4 = CreditCheck.new("4024007136512380")
    @credit_check_5 = CreditCheck.new("6011797668867828")

    @credit_check_6 = CreditCheck.new("5541801923795240")
    @credit_check_7 = CreditCheck.new("4024007106512380")
    @credit_check_8 = CreditCheck.new("6011797668868728")

    @credit_check_9 = CreditCheck.new("342804633855673")
    @credit_check_10 = CreditCheck.new("342801633855673")
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
    assert_equal true, @credit_check_2.valid?
    assert_equal true, @credit_check_3.valid?
    assert_equal true, @credit_check_4.valid?
    assert_equal true, @credit_check_5.valid?
    assert_equal true, @credit_check_5.valid?

    assert_equal false, @credit_check_6.valid?
    assert_equal false, @credit_check_7.valid?
    assert_equal false, @credit_check_8.valid?

    assert_equal true, @credit_check_9.valid?
    assert_equal false, @credit_check_10.valid?
  end
end
