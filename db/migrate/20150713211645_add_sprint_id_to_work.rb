class AddSprintIdToWork < ActiveRecord::Migration
  def change
    add_column :works, :sprint_id, :integer
    add_index :works, :sprint_id
  end
end
