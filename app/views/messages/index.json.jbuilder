# json.array! @messages, partial: 'messages/message', as: :message
if @new_message.present?
  json.array!(@new_message)
end
