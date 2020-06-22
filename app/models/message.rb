class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  # hide the implementation of user_nickname
  delegate :nickname, to: :user, prefix: true

  # def user_nickname # interface
  #   user.nickname
  # end
end
