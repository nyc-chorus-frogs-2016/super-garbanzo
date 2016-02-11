class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.integer   :user_id
      t.string    :first_name, null: false
      t.string    :last_name, null: false
      t.integer   :year_of_birth
      t.text      :bio

      t.timestamps null:false
    end
  end
end
