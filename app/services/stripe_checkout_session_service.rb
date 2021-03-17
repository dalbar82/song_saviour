class StripeCheckoutSessionService
  def call(event)
    order = Order.find_by(checout_session_id: event.data.object.id)
    order.update(state: 'paid')
    songs = Song.find_by(status: "please")
    songs.update(postion: "sold")
  end
end
