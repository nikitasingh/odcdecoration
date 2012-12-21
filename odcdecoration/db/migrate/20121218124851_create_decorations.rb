class CreateDecorations < ActiveRecord::Migration
  def change
    create_table :decorations do |t|
      t.string :name
      t.integer :year
      t.integer :zone_id

      t.timestamps
    end
  end
end
