require "test_helper"

class HikesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/hikes.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Hike.count, data.length
  end

  # test "create" do
  #   assert_difference "Hike.count", 1 do
  #     post "/hikes.json", params: { name: "Test Trail", park_id: 1, distance: "test miles", time: "4 minutes", image_url: "test url", route_type: "loop" }
  #     assert_response 200
  #   end
  # end

  test "show" do
    get "/hikes/#{Hike.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "park_id", "distance", "time", "image_url", "route_type"], data.keys
  end
end
