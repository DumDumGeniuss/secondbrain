class AddAmountToCosts < ActiveRecord::Migration
  def change
    add_column :costs, :amount, :integer
  end
  def down
    remove_index :costs, :type
  end
end
