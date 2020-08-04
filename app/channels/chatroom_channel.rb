class ChatroomChannel < ApplicationCable::Channel
    def subscribed
    #createing a generic channel where all users connect
        # stream_from "conversations_channel"
        
        # creating a private channel for each user
        # stream_from "current_user_#{current_user.id}"
        @chatroom = Chatroom.find(params[:chatroom_id])
        stream_for @chatroom
    end
    def unsubscribed
        # Any cleanup needed when channel is unsubscribed
    end

    # def send(chatroomId, content, userId)
    #     byebug
    #     message = Message.new(
    #       chatroom_id: chatroomId,
    #       content: content,
    #       user_id: userId
    #     )
    #     if message.save
    #         puts "successfully saved a message!"
    #         ActionCable.server.broadcast("chatroom_channel_#{message.chatroom_id}", message )
    #     else
    #         render json: {error: "Message failed to create"}
    #     end
    #   end
  end
  