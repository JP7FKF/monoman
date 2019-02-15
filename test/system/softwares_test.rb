require "application_system_test_case"

class SoftwaresTest < ApplicationSystemTestCase
  setup do
    @software = softwares(:one)
  end

  test "visiting the index" do
    visit softwares_url
    assert_selector "h1", text: "Softwares"
  end

  test "creating a Software" do
    visit softwares_url
    click_on "New Software"

    fill_in "Acquisition date", with: @software.acquisition_date
    fill_in "Acquisition price", with: @software.acquisition_price
    fill_in "Administrator", with: @software.administrator
    fill_in "Amortization period", with: @software.amortization_period
    fill_in "Amortize state", with: @software.amortize_state
    fill_in "Asset category", with: @software.asset_category
    fill_in "Asset code", with: @software.asset_code
    fill_in "Category", with: @software.category
    fill_in "Expiration date", with: @software.expiration_date
    fill_in "Localtion", with: @software.localtion
    fill_in "Manufacturer", with: @software.manufacturer
    fill_in "Product name", with: @software.product_name
    fill_in "Remarks", with: @software.remarks
    fill_in "Serial code", with: @software.serial_code
    fill_in "User", with: @software.user
    click_on "Create Software"

    assert_text "Software was successfully created"
    click_on "Back"
  end

  test "updating a Software" do
    visit softwares_url
    click_on "Edit", match: :first

    fill_in "Acquisition date", with: @software.acquisition_date
    fill_in "Acquisition price", with: @software.acquisition_price
    fill_in "Administrator", with: @software.administrator
    fill_in "Amortization period", with: @software.amortization_period
    fill_in "Amortize state", with: @software.amortize_state
    fill_in "Asset category", with: @software.asset_category
    fill_in "Asset code", with: @software.asset_code
    fill_in "Category", with: @software.category
    fill_in "Expiration date", with: @software.expiration_date
    fill_in "Localtion", with: @software.localtion
    fill_in "Manufacturer", with: @software.manufacturer
    fill_in "Product name", with: @software.product_name
    fill_in "Remarks", with: @software.remarks
    fill_in "Serial code", with: @software.serial_code
    fill_in "User", with: @software.user
    click_on "Update Software"

    assert_text "Software was successfully updated"
    click_on "Back"
  end

  test "destroying a Software" do
    visit softwares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Software was successfully destroyed"
  end
end
