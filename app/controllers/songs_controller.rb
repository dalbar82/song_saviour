class SongsController < ApplicationController
  def index
  end

  def create
    @song = Song.new(song_params)
    @song.user = current_user

    if @song.save 
      redirect_to song_url(@song)
    else
      render :new
    end
  end

  def new
    @song = Song.new
    @user = current_user
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def song_params
    params.require(:song).permit(:name, :rating, :priceing_type, :state, :audio, :genre_id )
  end

end
