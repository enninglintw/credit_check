require "minitest/autorun"

class TestCreditCheck < Minitest::Test
  def setup
    @credit_check = CreditCheck.new("4929735477250543")
  end

  def test_valid
    assert_equal true, @credit_check.valid?
  end
end
