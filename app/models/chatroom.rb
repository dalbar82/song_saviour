class Chatroom < ApplicationRecord
  has_many :chatroom_users
  has_many :messages, through: :chatroom_users 
  has_many :users, through: :chatroom_users 
end
