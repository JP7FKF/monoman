require "application_system_test_case"

class HardwaresTest < ApplicationSystemTestCase
  setup do
    @hardware = hardwares(:one)
  end

  test "visiting the index" do
    visit hardwares_url
    assert_selector "h1", text: "Hardwares"
  end

  test "creating a Hardware" do
    visit hardwares_url
    click_on "New Hardware"

    fill_in "Acquisition date", with: @hardware.acquisition_date
    fill_in "Acquisition price", with: @hardware.acquisition_price
    fill_in "Administrator", with: @hardware.administrator
    fill_in "Amortization period", with: @hardware.amortization_period
    fill_in "Amortize state", with: @hardware.amortize_state
    fill_in "Asset category", with: @hardware.asset_category
    fill_in "Asset code", with: @hardware.asset_code
    fill_in "Category", with: @hardware.category
    fill_in "Localtion", with: @hardware.localtion
    fill_in "Manufacturer", with: @hardware.manufacturer
    fill_in "Model", with: @hardware.model
    fill_in "Remarks", with: @hardware.remarks
    fill_in "Serial code", with: @hardware.serial_code
    fill_in "User", with: @hardware.user
    click_on "Create Hardware"

    assert_text "Hardware was successfully created"
    click_on "Back"
  end

  test "updating a Hardware" do
    visit hardwares_url
    click_on "Edit", match: :first

    fill_in "Acquisition date", with: @hardware.acquisition_date
    fill_in "Acquisition price", with: @hardware.acquisition_price
    fill_in "Administrator", with: @hardware.administrator
    fill_in "Amortization period", with: @hardware.amortization_period
    fill_in "Amortize state", with: @hardware.amortize_state
    fill_in "Asset category", with: @hardware.asset_category
    fill_in "Asset code", with: @hardware.asset_code
    fill_in "Category", with: @hardware.category
    fill_in "Localtion", with: @hardware.localtion
    fill_in "Manufacturer", with: @hardware.manufacturer
    fill_in "Model", with: @hardware.model
    fill_in "Remarks", with: @hardware.remarks
    fill_in "Serial code", with: @hardware.serial_code
    fill_in "User", with: @hardware.user
    click_on "Update Hardware"

    assert_text "Hardware was successfully updated"
    click_on "Back"
  end

  test "destroying a Hardware" do
    visit hardwares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hardware was successfully destroyed"
  end
end
