class AddDetailsToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :category, :string
    add_column :bookmarks, :description, :text
  end
end
