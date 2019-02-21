class Item < ApplicationRecord
  enum category: {hardware: 0, software: 1, others: 3}
  enum state: {unused: 0, using: 1, amortizing: 2, retired: 3}
  enum asset_category: {unknown: 0, equipment: 1, small_asset:2, fixed_asset: 3}
end
