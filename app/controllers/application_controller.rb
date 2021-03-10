class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  before_action :current_cart

  private
    def current_cart
      # if current_user 
      #   if current_user.shopping_carts.last.nil?
      #     @current_cart = current_user.shopping_carts.last
      #   else
      #     @current_cart = ShoppingCart.create(user: current_user)
      #   end
      # end
      if session[:shopping_cart_id]
        cart = ShoppingCart.find_by(:id => session[:shopping_cart_id])
        if cart.present?
          @current_cart = cart
        else
          session[:shopping_cart_id] = nil
        end
      end

      if session[:shopping_cart_id] == nil
        @current_cart = ShoppingCart.create(user_id: current_user.id)
        session[:shopping_cart_id] = @current_cart.id
      end
    end
  

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :photo])
  end
end
