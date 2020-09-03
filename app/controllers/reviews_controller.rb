class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @trainer = Trainer.find(params[:trainer_id])
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    if @review.save
      redirect_to training_path(@booking.training)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :title, :stars, :user_id, :booking_id)
  end
end
