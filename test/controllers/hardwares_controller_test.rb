require 'test_helper'

class HardwaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hardware = hardwares(:one)
  end

  test "should get index" do
    get hardwares_url
    assert_response :success
  end

  test "should get new" do
    get new_hardware_url
    assert_response :success
  end

  test "should create hardware" do
    assert_difference('Hardware.count') do
      post hardwares_url, params: { hardware: { acquisition_date: @hardware.acquisition_date, acquisition_price: @hardware.acquisition_price, administrator: @hardware.administrator, amortization_period: @hardware.amortization_period, amortize_state: @hardware.amortize_state, asset_category: @hardware.asset_category, asset_code: @hardware.asset_code, category: @hardware.category, localtion: @hardware.localtion, manufacturer: @hardware.manufacturer, model: @hardware.model, remarks: @hardware.remarks, serial_code: @hardware.serial_code, user: @hardware.user } }
    end

    assert_redirected_to hardware_url(Hardware.last)
  end

  test "should show hardware" do
    get hardware_url(@hardware)
    assert_response :success
  end

  test "should get edit" do
    get edit_hardware_url(@hardware)
    assert_response :success
  end

  test "should update hardware" do
    patch hardware_url(@hardware), params: { hardware: { acquisition_date: @hardware.acquisition_date, acquisition_price: @hardware.acquisition_price, administrator: @hardware.administrator, amortization_period: @hardware.amortization_period, amortize_state: @hardware.amortize_state, asset_category: @hardware.asset_category, asset_code: @hardware.asset_code, category: @hardware.category, localtion: @hardware.localtion, manufacturer: @hardware.manufacturer, model: @hardware.model, remarks: @hardware.remarks, serial_code: @hardware.serial_code, user: @hardware.user } }
    assert_redirected_to hardware_url(@hardware)
  end

  test "should destroy hardware" do
    assert_difference('Hardware.count', -1) do
      delete hardware_url(@hardware)
    end

    assert_redirected_to hardwares_url
  end
end
