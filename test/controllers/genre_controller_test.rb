require "test_helper"

class GenreControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get genre_create_url
    assert_response :success
  end

  test "should get new" do
    get genre_new_url
    assert_response :success
  end

  test "should get show" do
    get genre_show_url
    assert_response :success
  end
end
