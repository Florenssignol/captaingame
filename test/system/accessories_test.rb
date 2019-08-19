require "application_system_test_case"

class AccessoriesTest < ApplicationSystemTestCase
  setup do
    @accessory = accessories(:one)
  end

  test "visiting the index" do
    visit accessories_url
    assert_selector "h1", text: "Accessories"
  end

  test "creating a Accessory" do
    visit accessories_url
    click_on "New Accessory"

    click_on "Create Accessory"

    assert_text "Accessory was successfully created"
    click_on "Back"
  end

  test "updating a Accessory" do
    visit accessories_url
    click_on "Edit", match: :first

    click_on "Update Accessory"

    assert_text "Accessory was successfully updated"
    click_on "Back"
  end

  test "destroying a Accessory" do
    visit accessories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Accessory was successfully destroyed"
  end
end
