class FixCostColumnAmountToPrice < ActiveRecord::Migration
  def change
    rename_column :costs, :amount, :price
  end
end
