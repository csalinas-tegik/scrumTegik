class AddHackerIdToWork < ActiveRecord::Migration
  def change
    add_column :works, :hacker_id, :integer
    add_index :works, :hacker_id
  end
end
