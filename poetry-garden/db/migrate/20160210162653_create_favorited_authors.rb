class CreateFavoritedAuthors < ActiveRecord::Migration
  def change
    create_table :favorited_authors do |t|
      t.integer :author_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
