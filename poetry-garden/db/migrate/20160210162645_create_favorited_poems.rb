class CreateFavoritedPoems < ActiveRecord::Migration
  def change
    create_table :favorited_poems do |t|
      t.integer :poem_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
