class CreateHardwares < ActiveRecord::Migration[5.2]
  def change
    create_table :hardwares do |t|
      t.integer :asset_category, :null => false
      t.string :asset_code
      t.string :category
      t.string :manufacturer
      t.string :model, :null => false
      t.string :serial_code
      t.string :localtion
      t.string :administrator
      t.string :user
      t.date :acquisition_date
      t.integer :acquisition_price
      t.integer :amortization_period
      t.integer :amortize_state
      t.text :remarks

      t.timestamps
    end
  end
end
