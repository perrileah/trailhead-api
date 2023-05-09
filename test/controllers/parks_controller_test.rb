require "test_helper"

class ParksControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/parks.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Park.count, data.length
  end

  test "show" do
    get "/parks/#{Park.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "city", "state", "zip", "description", "image_url"], data.keys
  end
end
