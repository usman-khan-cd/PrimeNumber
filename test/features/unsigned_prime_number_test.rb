require 'test_helper'

class UnsignedPrimeNumberTest < ActionDispatch::IntegrationTest

  test "should return false if not prime number (zero)" do
    assert_equal false, PrimeNumberService.new(0).call
  end

  test "should return false if not prime number (negative number)" do
    assert_equal false, PrimeNumberService.new(-10).call
  end

  test "should return true if prime number" do
  	assert_equal true, PrimeNumberService.new(7).call
  end

  test "should return false if not prime number" do
  	assert_equal false, PrimeNumberService.new(8).call
  end

  test "should return false if not prime number(for larger/unsigned numbers)" do
  	assert_equal false, PrimeNumberService.new(-2147483648).call
  end

  test "should return true if prime number(for larger/unsigned numbers)" do
  	assert_equal true, PrimeNumberService.new(4294967311).call
  end

end
