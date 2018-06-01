require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test 'should post is prime number' do
  	post is_prime_number_home_index_url, {number: 8}
    assert_redirected_to root_url
  end
end
