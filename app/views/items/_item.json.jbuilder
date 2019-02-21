json.extract! item, :id, :asset_category, :asset_code, :category, :subcategory, :manufacturer, :product_name, :serial_code, :localtion, :administrator, :user, :expiration_date, :acquisition_date, :acquisition_price, :amortization_period, :state, :remarks, :created_at, :updated_at
json.url item_url(item, format: :json)
