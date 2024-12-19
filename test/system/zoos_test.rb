require "application_system_test_case"

class ZoosTest < ApplicationSystemTestCase
  setup do
    @zoo = zoos(:one)
  end

  test "visiting the index" do
    visit zoos_url
    assert_selector "h1", text: "Zoos"
  end

  test "should create zoo" do
    visit zoos_url
    click_on "New zoo"

    fill_in "Animal", with: @zoo.animal
    fill_in "Email", with: @zoo.email
    fill_in "First name", with: @zoo.first_name
    fill_in "Last name", with: @zoo.last_name
    fill_in "Phone", with: @zoo.phone
    click_on "Create Zoo"

    assert_text "Zoo was successfully created"
    click_on "Back"
  end

  test "should update Zoo" do
    visit zoo_url(@zoo)
    click_on "Edit this zoo", match: :first

    fill_in "Animal", with: @zoo.animal
    fill_in "Email", with: @zoo.email
    fill_in "First name", with: @zoo.first_name
    fill_in "Last name", with: @zoo.last_name
    fill_in "Phone", with: @zoo.phone
    click_on "Update Zoo"

    assert_text "Zoo was successfully updated"
    click_on "Back"
  end

  test "should destroy Zoo" do
    visit zoo_url(@zoo)
    click_on "Destroy this zoo", match: :first

    assert_text "Zoo was successfully destroyed"
  end
end
