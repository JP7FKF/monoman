require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post items_url, params: { item: { acquisition_date: @item.acquisition_date, acquisition_price: @item.acquisition_price, administrator: @item.administrator, amortization_period: @item.amortization_period, asset_category: @item.asset_category, asset_code: @item.asset_code, category: @item.category, expiration_date: @item.expiration_date, localtion: @item.localtion, manufacturer: @item.manufacturer, product_name: @item.product_name, remarks: @item.remarks, serial_code: @item.serial_code, state: @item.state, subcategory: @item.subcategory, user: @item.user } }
    end

    assert_redirected_to item_url(Item.last)
  end

  test "should show item" do
    get item_url(@item)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_url(@item)
    assert_response :success
  end

  test "should update item" do
    patch item_url(@item), params: { item: { acquisition_date: @item.acquisition_date, acquisition_price: @item.acquisition_price, administrator: @item.administrator, amortization_period: @item.amortization_period, asset_category: @item.asset_category, asset_code: @item.asset_code, category: @item.category, expiration_date: @item.expiration_date, localtion: @item.localtion, manufacturer: @item.manufacturer, product_name: @item.product_name, remarks: @item.remarks, serial_code: @item.serial_code, state: @item.state, subcategory: @item.subcategory, user: @item.user } }
    assert_redirected_to item_url(@item)
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete item_url(@item)
    end

    assert_redirected_to items_url
  end
end
