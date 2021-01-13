require "application_system_test_case"

class FriendsListsTest < ApplicationSystemTestCase
  setup do
    @friends_list = friends_lists(:one)
  end

  test "visiting the index" do
    visit friends_lists_url
    assert_selector "h1", text: "Friends Lists"
  end

  test "creating a Friends list" do
    visit friends_lists_url
    click_on "New Friends List"

    fill_in "Email", with: @friends_list.email
    fill_in "First name", with: @friends_list.first_name
    fill_in "Last name", with: @friends_list.last_name
    fill_in "Phone", with: @friends_list.phone
    fill_in "Twitter", with: @friends_list.twitter
    click_on "Create Friends list"

    assert_text "Friends list was successfully created"
    click_on "Back"
  end

  test "updating a Friends list" do
    visit friends_lists_url
    click_on "Edit", match: :first

    fill_in "Email", with: @friends_list.email
    fill_in "First name", with: @friends_list.first_name
    fill_in "Last name", with: @friends_list.last_name
    fill_in "Phone", with: @friends_list.phone
    fill_in "Twitter", with: @friends_list.twitter
    click_on "Update Friends list"

    assert_text "Friends list was successfully updated"
    click_on "Back"
  end

  test "destroying a Friends list" do
    visit friends_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Friends list was successfully destroyed"
  end
end
