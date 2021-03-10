class ShoppingCartsController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def show
    @shopping_cart = @current_cart
  end

  def destroy
    @shopping_cart = @current_cart
    @shopping_cart.destroy
    session[:shopping_cart_id] = nil
    redirect_to shopping_cart_path
  end

  def edit
  end

  def update
  end
end
