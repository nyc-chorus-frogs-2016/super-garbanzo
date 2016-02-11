class MakeIndexes < ActiveRecord::Migration
  def change
    add_index :authors, :last_name
    add_index :poems, :title
  end
end
