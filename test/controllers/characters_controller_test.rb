require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:haruka)
  end

  test "should get all" do
    get characters_all_url, as: :json
    assert_response :success
    assert_match /天海春香/, @response.body
  end
end
