class RemoveTypeFromSprint < ActiveRecord::Migration
  def change
    remove_column :sprints, :type, :string
  end
end
