require "test_helper"

class ProfilePhotosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get profile_photos_create_url
    assert_response :success
  end
end
