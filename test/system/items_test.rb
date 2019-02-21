require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "creating a Item" do
    visit items_url
    click_on "New Item"

    fill_in "Acquisition date", with: @item.acquisition_date
    fill_in "Acquisition price", with: @item.acquisition_price
    fill_in "Administrator", with: @item.administrator
    fill_in "Amortization period", with: @item.amortization_period
    fill_in "Asset category", with: @item.asset_category
    fill_in "Asset code", with: @item.asset_code
    fill_in "Category", with: @item.category
    fill_in "Expiration date", with: @item.expiration_date
    fill_in "Localtion", with: @item.localtion
    fill_in "Manufacturer", with: @item.manufacturer
    fill_in "Product name", with: @item.product_name
    fill_in "Remarks", with: @item.remarks
    fill_in "Serial code", with: @item.serial_code
    fill_in "State", with: @item.state
    fill_in "Subcategory", with: @item.subcategory
    fill_in "User", with: @item.user
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "updating a Item" do
    visit items_url
    click_on "Edit", match: :first

    fill_in "Acquisition date", with: @item.acquisition_date
    fill_in "Acquisition price", with: @item.acquisition_price
    fill_in "Administrator", with: @item.administrator
    fill_in "Amortization period", with: @item.amortization_period
    fill_in "Asset category", with: @item.asset_category
    fill_in "Asset code", with: @item.asset_code
    fill_in "Category", with: @item.category
    fill_in "Expiration date", with: @item.expiration_date
    fill_in "Localtion", with: @item.localtion
    fill_in "Manufacturer", with: @item.manufacturer
    fill_in "Product name", with: @item.product_name
    fill_in "Remarks", with: @item.remarks
    fill_in "Serial code", with: @item.serial_code
    fill_in "State", with: @item.state
    fill_in "Subcategory", with: @item.subcategory
    fill_in "User", with: @item.user
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "destroying a Item" do
    visit items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item was successfully destroyed"
  end
end
