class FixCostColumnName < ActiveRecord::Migration
  def change
    rename_column :costs, :type, :cost_type
  end
end
