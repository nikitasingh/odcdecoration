class CreateTaskusers < ActiveRecord::Migration
  def change
    create_table :taskusers do |t|
      t.integer :tasks_id
      t.integer :users_id

      t.timestamps
    end
  end
end
