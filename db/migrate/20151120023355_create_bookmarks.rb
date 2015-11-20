class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :website
      t.string :title
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
