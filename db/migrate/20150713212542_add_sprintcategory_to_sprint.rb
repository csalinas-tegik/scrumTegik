class AddSprintcategoryToSprint < ActiveRecord::Migration
  def change
    add_column :sprints, :sprintcategory, :string
  end
end
