class Message < ApplicationRecord
  belongs_to :chatroom_user
  has_one :user, through: :chatroom_user
  has_one :chatroom, through: :chatroom_user
end
