class CreateHackers < ActiveRecord::Migration
  def change
    create_table :hackers do |t|
      t.string :name
      t.datetime :datefrom
      t.datetime :dateto

      t.timestamps null: false
    end
  end
end
