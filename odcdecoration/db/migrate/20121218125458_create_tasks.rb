class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :decoration_id

      t.timestamps
    end
  end
end
