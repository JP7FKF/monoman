class Software < ApplicationRecord
  enum amortize_state: {unused: 0, using: 1, amortizing: 2}
  enum asset_category: {unknown: 0, equipment: 1, small_asset:2, fixed_asset: 3}
end
