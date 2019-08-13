require "application_system_test_case"

class ArenasTest < ApplicationSystemTestCase
  setup do
    @arena = arenas(:one)
  end

  test "visiting the index" do
    visit arenas_url
    assert_selector "h1", text: "Arenas"
  end

  test "creating a Arena" do
    visit arenas_url
    click_on "New Arena"

    click_on "Create Arena"

    assert_text "Arena was successfully created"
    click_on "Back"
  end

  test "updating a Arena" do
    visit arenas_url
    click_on "Edit", match: :first

    click_on "Update Arena"

    assert_text "Arena was successfully updated"
    click_on "Back"
  end

  test "destroying a Arena" do
    visit arenas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Arena was successfully destroyed"
  end
end
