class DashboardsController < ApplicationController
  def show
     @bookings = Booking.all
     @songs = current_user.songs
      # @order_songs = Orders.find(params[@orders.song_id])
   end
end
