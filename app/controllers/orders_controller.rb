class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def create
    @songs = Song.find_by(state: 'baby')
    current_cart = @current_cart
    order  = Order.create!(total_price: current_cart.sub_total, state: 'pending', user: current_user)
    price = current_cart.sub_total * 100
    order.add_line_items(current_cart)
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: current_user.nickname,
        amount: price,
        currency: 'aud',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )
  
    order.update(checout_session_id: session.id)
    @songs.update(status: 'sold')
    @songs.update(state: 'purchased')
    redirect_to new_order_payment_path(order)
  end

  def new
    @order = Order.new
  end

  def show
    @order = current_user.orders.find(params[:id])
    @songs = Song.where(status: "please")
  end

  def edit
  end

  def update
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path(@order)
  end

  private
  def order_params
    params.require(:order).permit(:name, :email, :address, :pay_method, :song_id, :shopping_cart_id, :state, line_items: [])
  end
  
end
