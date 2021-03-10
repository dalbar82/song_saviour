class AddNicknameCredToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nickname, :string
    add_column :users, :cred, :integer
  end
end
