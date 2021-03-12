class AddRefToOrder < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :song, foreign_key: true
  end
end
