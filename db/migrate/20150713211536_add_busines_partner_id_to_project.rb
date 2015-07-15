class AddBusinesPartnerIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :business_partner_id, :integer
    add_index :projects, :business_partner_id
  end
end
