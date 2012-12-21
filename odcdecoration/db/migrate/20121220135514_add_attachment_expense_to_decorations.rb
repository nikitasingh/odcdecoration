class AddAttachmentExpenseToDecorations < ActiveRecord::Migration
  def self.up
    change_table :decorations do |t|
      t.has_attached_file :expense
    end
  end

  def self.down
    drop_attached_file :decorations, :expense
  end
end
