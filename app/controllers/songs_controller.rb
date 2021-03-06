class SongsController < ApplicationController

  before_action :set_song, only: %i[show edit update favorite unfavorite]

  def index
    @songs = Song.all
    @song = Song.new
    if params[:query].present?
      @songs = Song.global_search(params[:query])
    end
  end

  def create
    @song = Song.new(song_params)
    @song.state = "available"
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
    @song = Song.find(params[:id])
  end

  def edit

  end

  def update
    @song = Song.find(params[:id])
    @song.user = current_user
    if @song.update(song_params)
      redirect_to @song
    else
     render :edit
    end
  end

  def destroy

    @song = Song.find(params[:id])
    @song.destroy


    # redirect_to dashboard_path

    redirect_to songs_path

  end

  def favorite
    current_user.favorite(@song)
    redirect_back(fallback_location: songs_path)
  end

  def unfavorite
    current_user.unfavorite(@song)
    redirect_back(fallback_location: songs_path)
  end

  private

  def set_song
    # @song = Song.find(params[:id])
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :rating, :pricing_type, :dollar, :price, :state, :audio, :lyrics, :genre_id )
  end
end

