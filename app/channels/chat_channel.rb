class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel"
  end

  def unsubscribed
  end

  def send_message(data)

    message = current_user.messages.build(body: data['message'])
   
    message.save
  end
end