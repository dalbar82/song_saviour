class MessagesController < ApplicationController

  def create
  
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom_user = ChatroomUser.find_by(user: current_user, chatroom: @chatroom)
    # @message.chatroom_user = ChatroomUser.find_by(id: 1) is the same as => ChatroomUser.find(1)
    #  @message.chatroom_user = ChatroomUser.where(user: current_user, chatroom: @chatroom).first
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: { message: @message })
      )
      redirect_to chatroom_url(@chatroom, anchor: "message-#{@message.id}")
    else
      render "chatrooms/show"
    end
  end

  def message_params
    params.require(:message).permit(:content )
  end
end
