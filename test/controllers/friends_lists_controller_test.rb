require "test_helper"

class FriendsListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friends_list = friends_lists(:one)
  end

  test "should get index" do
    get friends_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_friends_list_url
    assert_response :success
  end

  test "should create friends_list" do
    assert_difference('FriendsList.count') do
      post friends_lists_url, params: { friends_list: { email: @friends_list.email, first_name: @friends_list.first_name, last_name: @friends_list.last_name, phone: @friends_list.phone, twitter: @friends_list.twitter } }
    end

    assert_redirected_to friends_list_url(FriendsList.last)
  end

  test "should show friends_list" do
    get friends_list_url(@friends_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_friends_list_url(@friends_list)
    assert_response :success
  end

  test "should update friends_list" do
    patch friends_list_url(@friends_list), params: { friends_list: { email: @friends_list.email, first_name: @friends_list.first_name, last_name: @friends_list.last_name, phone: @friends_list.phone, twitter: @friends_list.twitter } }
    assert_redirected_to friends_list_url(@friends_list)
  end

  test "should destroy friends_list" do
    assert_difference('FriendsList.count', -1) do
      delete friends_list_url(@friends_list)
    end

    assert_redirected_to friends_lists_url
  end
end
