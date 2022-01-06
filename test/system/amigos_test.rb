require "application_system_test_case"

class AmigosTest < ApplicationSystemTestCase
  setup do
    @amigo = amigos(:one)
  end

  test "visiting the index" do
    visit amigos_url
    assert_selector "h1", text: "Amigos"
  end

  test "should create amigo" do
    visit amigos_url
    click_on "New amigo"

    fill_in "Email", with: @amigo.email
    fill_in "First name", with: @amigo.first_name
    fill_in "Last name", with: @amigo.last_name
    fill_in "Phone", with: @amigo.phone
    fill_in "String", with: @amigo.string
    fill_in "Twitter", with: @amigo.twitter
    click_on "Create Amigo"

    assert_text "Amigo was successfully created"
    click_on "Back"
  end

  test "should update Amigo" do
    visit amigo_url(@amigo)
    click_on "Edit this amigo", match: :first

    fill_in "Email", with: @amigo.email
    fill_in "First name", with: @amigo.first_name
    fill_in "Last name", with: @amigo.last_name
    fill_in "Phone", with: @amigo.phone
    fill_in "String", with: @amigo.string
    fill_in "Twitter", with: @amigo.twitter
    click_on "Update Amigo"

    assert_text "Amigo was successfully updated"
    click_on "Back"
  end

  test "should destroy Amigo" do
    visit amigo_url(@amigo)
    click_on "Destroy this amigo", match: :first

    assert_text "Amigo was successfully destroyed"
  end
end
