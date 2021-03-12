class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @song = Song.find(params[:song_id])
    @booking = Booking.create(status: "pending")
    @booking.song = @song
    @booking.user = current_user

    if @booking.save
      redirect_to dashboard_path(@booking), notice: 'successfully created an enquiry'
    else
      render :new
    end
  end

  def show
  end

  def edit
    @user = current_user
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to dashboard_path
  end

  def new
    @user = current_user
    @song = Song.find(params[:song_id])
    @booking = Booking.new
  end

  def booking_params
    params.require(:booking).permit(:song_id)
  end
end
