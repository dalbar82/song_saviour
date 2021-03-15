class StripeCheckoutSessionService
  def call(event)
    order = Order.find_by(checout_session_id: event.data.object.id)
    order.song.update(state: 'paid')
  end
end