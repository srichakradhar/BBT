require 'test_helper'

class RangersControllerTest < ActionDispatch::IntegrationTest
  test "should get racers" do
    get rangers_racers_url
    assert_response :success
  end

end
