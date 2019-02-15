require 'test_helper'

class SoftwaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @software = softwares(:one)
  end

  test "should get index" do
    get softwares_url
    assert_response :success
  end

  test "should get new" do
    get new_software_url
    assert_response :success
  end

  test "should create software" do
    assert_difference('Software.count') do
      post softwares_url, params: { software: { acquisition_date: @software.acquisition_date, acquisition_price: @software.acquisition_price, administrator: @software.administrator, amortization_period: @software.amortization_period, amortize_state: @software.amortize_state, asset_category: @software.asset_category, asset_code: @software.asset_code, category: @software.category, expiration_date: @software.expiration_date, localtion: @software.localtion, manufacturer: @software.manufacturer, product_name: @software.product_name, remarks: @software.remarks, serial_code: @software.serial_code, user: @software.user } }
    end

    assert_redirected_to software_url(Software.last)
  end

  test "should show software" do
    get software_url(@software)
    assert_response :success
  end

  test "should get edit" do
    get edit_software_url(@software)
    assert_response :success
  end

  test "should update software" do
    patch software_url(@software), params: { software: { acquisition_date: @software.acquisition_date, acquisition_price: @software.acquisition_price, administrator: @software.administrator, amortization_period: @software.amortization_period, amortize_state: @software.amortize_state, asset_category: @software.asset_category, asset_code: @software.asset_code, category: @software.category, expiration_date: @software.expiration_date, localtion: @software.localtion, manufacturer: @software.manufacturer, product_name: @software.product_name, remarks: @software.remarks, serial_code: @software.serial_code, user: @software.user } }
    assert_redirected_to software_url(@software)
  end

  test "should destroy software" do
    assert_difference('Software.count', -1) do
      delete software_url(@software)
    end

    assert_redirected_to softwares_url
  end
end
