class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :email
      t.string :password
      t.string :birth

      t.timestamps null: false
    end
  end
end
