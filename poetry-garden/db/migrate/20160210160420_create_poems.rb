class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.string :author_id, null:false
      t.text :lines, null:false
      t.integer :year
      t.string :title
      t.integer :submitter_id
    end
  end
end
