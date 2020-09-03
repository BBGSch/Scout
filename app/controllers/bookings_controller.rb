class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = Booking.all.select { |booking| booking.user == @user  }
  end

  def show
    @booking = Booking.find(params[:id])
    @training_session = @booking.training_session
    @training = @booking.training
    @user = current_user
  end

  def create
    
    @booking = Booking.new
    @booking.status = true
    @user = current_user
    @booking.user = @user
    @trainingsession = TrainingSession.find(params[:training_session_id])
    @booking.training_session = @trainingsession
    @booking.save
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @trainingsession = @booking.training_session
    @booking.destroy
    redirect_to training_session_path(@trainingsession)
  end

  def booking_params
    params.require(:booking).permit(:status, :user_id, :training_session_id)
  end

end
