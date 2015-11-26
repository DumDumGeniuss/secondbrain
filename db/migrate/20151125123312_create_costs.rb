class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.string :type
      t.integer :user_id
      t.string :cost_for
      t.string :position
      t.date :cost_time

      t.timestamps null: false
    end
    add_index :costs, :type
    add_index :costs, :user_id
  end
end
