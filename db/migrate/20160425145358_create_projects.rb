class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :what
      t.text :for_who
      t.text :features

      t.timestamps null: false
    end
  end
end
