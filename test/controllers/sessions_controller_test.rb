require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    post "/users.json", params: { name: "Test", email: "Test@test.com", password: "test", password_confirmation: "test", image_url: "image url" }
    post "/sessions.json", params: { email: "Test@test.com", password: "test" }
    assert_response 201

    data = JSON.parse(response.body)
    assert_equal ["jwt", "email", "user_id"], data.keys
  end
end
