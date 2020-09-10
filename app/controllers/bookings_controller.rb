class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = Booking.all.select { |booking| booking.user == @user }
    @future_bookings = @bookings.select { |booking| booking.training_session.time > Time.now }
    @past_bookings = @bookings.select { |booking| booking.training_session.time < Time.now }
    # @booking.status = true
    # if booking.date.to_time > Time.now
    #   booking.status = false
    # else
    #   booking.status = true
    # end

  end

  def show
    @booking = Booking.find(params[:id])
    @training_session = @booking.training_session
    @training = @booking.training
    @user = current_user
    @review = Review.new
    @markers = []
    @session = @training.training_sessions
    @session.geocoded.map do |trainingsession|
      @markers.push({
        lat: trainingsession.latitude,
        lng: trainingsession.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { trainingsession: trainingsession })
      })
    end
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
end
