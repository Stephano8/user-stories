class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :user_id
      t.integer :story_id

      t.timestamps null: false
    end
  end
end
