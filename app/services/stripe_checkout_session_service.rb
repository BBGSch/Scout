class StripeCheckoutSessionService
  def call(event)
    order = Order.find_by(checkout_session_id: event.data.object.id)
    order.update(state: 'paid')
    my_booking = Booking.create({training_session_id: order.training_session_id, user_id: order.user_id, status: true})
    #redirect_to training_session_bookings_path(TrainingSession.find(order.training_session_id)),  method: :post
  end
end
