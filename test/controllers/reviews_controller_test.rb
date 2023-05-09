require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/reviews.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Review.count, data.length
  end

  test "show" do
    get "/reviews/#{Review.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "hike_id", "user_id", "ranking", "comments", "image_url", "time"], data.keys
  end

  test "update" do
    review = Review.first
    patch "/reviews/#{review.id}.json", params: { comments: "Updated comments" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated comments", data["comments"]
  end

  test "destroy" do
    assert_difference "Review.count", -1 do
      delete "/reviews/#{Review.first.id}.json"
      assert_response 200
    end
  end

  # test "create" do
  #   assert_difference "Review.count", 1 do
  #     post "/reviews.json", params: { hike_id: 1, user_id: 1, ranking: 1, comments: "test comments", image_url: "image_url", time: "1 hour" }
  #     assert_response 200
  #   end
  # end
end
