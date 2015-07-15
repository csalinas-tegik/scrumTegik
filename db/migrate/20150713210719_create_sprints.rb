class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.string :name
      t.string :type
      t.string :active

      t.timestamps null: false
    end
  end
end
