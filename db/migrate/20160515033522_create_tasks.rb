class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.references :task_list, foreign_key: true
      t.timestamps null: false
    end
  end
end
