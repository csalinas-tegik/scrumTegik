class AddHackerIdToSprint < ActiveRecord::Migration
  def change
    add_column :sprints, :hacker_id, :integer
    add_index :sprints, :hacker_id
  end
end
