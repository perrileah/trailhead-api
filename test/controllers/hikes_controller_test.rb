require "test_helper"

class HikesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/hikes.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Hike.count, data.length
  end
end
