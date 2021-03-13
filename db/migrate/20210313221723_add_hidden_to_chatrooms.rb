class AddHiddenToChatrooms < ActiveRecord::Migration[6.1]
  def change
    add_column :chatrooms, :hidden, :boolean
  end
end
