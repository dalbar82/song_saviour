class ChatroomsController < ApplicationController

  def new
    @chatroom = Chatroom.new
    @user = current_user
  end

  def create
    @chatroom = Chatroom.new
    @chatroom.hidden = false
    if @chatroom.save
      @user1 = ChatroomUser.create(user: current_user)
      @user1.chatroom = @chatroom
      @user1.save
      @user2 = ChatroomUser.create(user: User.find(chatroom_params[:user_id].to_i))
      @user2.chatroom = @chatroom
      @user2.save

      redirect_to chatroom_url(@chatroom)
    else
      render :new
    end
  end

  def destroy
    @chatroom = Chatroom.find(params[:id])
    @chatroom.hidden = true
    @chatroom.save
    # please note I am not actually destroying the records or the chatroom just hiding it from accesss from the users
    # so all data, message etc could technically be retrieved
    redirect_to dashboard_path
  end

  def show
    @message = Message.new
    @chatroom = Chatroom.find(params[:id])
  end

  def chatroom_params
    params.require(:chatroom).permit(:name, :user_id)
  end
end
