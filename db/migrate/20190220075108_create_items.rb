class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :asset_category, :null=>false
      t.string :asset_code
      t.integer :category
      t.string :subcategory
      t.string :manufacturer
      t.string :product_name, :null=>false
      t.string :serial_code
      t.string :localtion
      t.string :administrator
      t.string :user
      t.date :expiration_date
      t.date :acquisition_date
      t.integer :acquisition_price
      t.integer :amortization_period
      t.integer :state
      t.text :remarks

      t.timestamps
    end
  end
end
