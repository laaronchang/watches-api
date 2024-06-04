require "test_helper"

class WatchesControllerTest < ActionDispatch::IntegrationTest
 
  test "index" do
    get "/watches.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Watch.count, data.length
  end
end
