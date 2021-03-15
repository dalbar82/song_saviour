class FavoritesController < ApplicationController
  def create

    @song = Song.find(params[:song_id])
    current_user.favorite(@song)

  end

  def new
  end

  def show
  end

   def destroy
    @song = Song.find(params[:song_id])
    current_user.unfavorite(@song)
  end
end
