class OrdersController < ApplicationController
  def create
    training_session = TrainingSession.find(params[:training_session_id])
    order  = Order.create!(training_session: training_session, training_session_sku: training_session.id.to_s, amount_cents: training_session.price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: "#{training_session.training.name}  #{training_session.time}",
        currency: 'eur',
        amount: training_session.price.to_i*100,
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
  end
end
