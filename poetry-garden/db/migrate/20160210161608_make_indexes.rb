class MakeIndexes < ActiveRecord::Migration
  def change
    add_index :authors, :name
    add_index :poems, :title
  end
end
