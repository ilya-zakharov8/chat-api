class Message < ApplicationRecord
  belongs_to :sender, class_name: "User", foreign_key: :sender_id
  belongs_to :receiver, class_name: "User", foreign_key: :receiver_id
  belongs_to :chat

  enum state: [:unread, :read]

  PERMITTED = %i(sender_id receiver_id body)
end
