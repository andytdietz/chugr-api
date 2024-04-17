require "test_helper"

class BreweriesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/breweries.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Brewery.count, data.length
  end

  test "show" do
    get "/breweries/#{Brewery.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "city", "website_url", "image_url", "brewery_type"], data.keys
  end
end
