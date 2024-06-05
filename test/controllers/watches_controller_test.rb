require "test_helper"

class WatchesControllerTest < ActionDispatch::IntegrationTest
 
  test "index" do
    get "/watches.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Watch.count, data.length
  end

  test "create" do
    assert_difference "Watch.count", 1 do
      post "/watches.json",  params: { brand: "Blah", model: "any", color: "orange", price: 100, image_url: "web address" }
      assert_response 200
    end
  end

  test "show" do
    get "/watches/#{Watch.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "brand", "model", "color", "price", "image_url", "created_at", "updated_at"], data.keys
  end

  # test "update" do
  #   watch = Watch.first
  #   patch "watches/#{Watch.id}.json", params: { brand: "Updated name" }
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal "Updated name", data["brand"]
  # end

end
