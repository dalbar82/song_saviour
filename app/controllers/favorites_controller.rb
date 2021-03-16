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
    @favorite = Favorite.find(params[:format])
    @favorite.destroy
    redirect_to dashboard_url
  end
end
