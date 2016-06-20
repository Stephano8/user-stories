class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :goal
      t.text :benefit
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
