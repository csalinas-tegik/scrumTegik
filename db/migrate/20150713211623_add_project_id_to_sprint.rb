class AddProjectIdToSprint < ActiveRecord::Migration
  def change
    add_column :sprints, :project_id, :integer
    add_index :sprints, :project_id
  end
end
