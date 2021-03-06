require "application_system_test_case"

class WrestlersTest < ApplicationSystemTestCase
  setup do
    @wrestler = wrestlers(:one)
  end

  test "visiting the index" do
    visit wrestlers_url
    assert_selector "h1", text: "Wrestlers"
  end

  test "creating a Wrestler" do
    visit wrestlers_url
    click_on "New Wrestler"

    click_on "Create Wrestler"

    assert_text "Wrestler was successfully created"
    click_on "Back"
  end

  test "updating a Wrestler" do
    visit wrestlers_url
    click_on "Edit", match: :first

    click_on "Update Wrestler"

    assert_text "Wrestler was successfully updated"
    click_on "Back"
  end

  test "destroying a Wrestler" do
    visit wrestlers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wrestler was successfully destroyed"
  end
end
