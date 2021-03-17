class ApplicationController < ActionController::Base
  # the following two lines are meant to all the action text RTFiles to deploy to Heroku
  require 'action_text'
  helper ActionText::Engine.helpers

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  before_action :current_cart

  private
  def current_cart
    if session[:shopping_cart_id]
      cart = ShoppingCart.find_by(:id => session[:shopping_cart_id])
      if cart.present?
        @current_cart = cart
      else
        session[:shopping_cart_id] = nil
      end
    end

    if session[:shopping_cart_id] == nil && current_user !=nil
      @current_cart = ShoppingCart.create(user_id: current_user.id)
      session[:shopping_cart_id] = @current_cart.id
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :nickname, :description, :cred, :photo])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :nickname, :description, :cred, :photo])
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
