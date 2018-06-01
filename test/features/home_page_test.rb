require "test_helper"

class HomePageTest < Capybara::Rails::TestCase
  test "home page" do
    visit root_path
    assert page.has_content?("Prime Number")
   	assert page.find("#submit-btn").visible?
    assert page.find("#number").visible?
  end
end
