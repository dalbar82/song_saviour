class LineItemsController < ApplicationController
  def index
  end

  def create
    chosen_song = Song.find(params[:song_id])
    current_cart = @current_cart
    
    if current_cart.songs.include?(chosen_song)
      # Find the line_item with the chosen_product
      @line_item = current_cart.line_items.find_by(:song_id => chosen_song)
      # Iterate the line_item's quantity by one
      @line_item.quantity += 1
    else
      @line_item = LineItem.new
      @line_item.shopping_cart = current_cart
      @line_item.song = chosen_song
    end
  
    # Save and redirect to cart show path
    @line_item.save
    redirect_to shopping_cart_path(current_cart)
  end

  def new
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to shopping_cart_path(@current_cart)
  end
end

private
  def line_item_params
    params.require(:line_item).permit(:quantity, :song_id, :shopping_cart_id)
  end
