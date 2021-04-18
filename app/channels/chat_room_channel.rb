# frozen_string_literal: true

# ChatRoomChannel/Class to create channels
class ChatRoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat_room_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    speak = { message: data['message'], sent_by: data['name'] }
    ActionCable.server.broadcast 'chat_room_channel', speak
  end

  def announce(data)
    announce = { chat_room_name: data['name'], type: data['type'] }
    ActionCable.server.broadcast 'chat_room_channel', announce
  end
end
