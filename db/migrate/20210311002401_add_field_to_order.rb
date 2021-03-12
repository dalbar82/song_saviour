class AddFieldToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :state, :string
    add_column :orders, :checout_session_id, :string
  end
end
