class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.datetime :date
      t.float :time

      t.timestamps null: false
    end
  end
end
