class TrainersController < ApplicationController

  def index
    @trainers = search(params)
  end

  def search(params)
     return User.where(trainer: true) if params.keys.length == 2
     sessions = TrainingSession.near(params[:location], 50)
     trainers = sessions.map{|session| session.training.user}.uniq
     genders = []
     genders << "male" if params[:male] == "true"
     genders << "female" if params[:female] == "true"
     genders << "non-binary" if params[:other] == "true"
     return trainers if genders.empty?
     trainers.select { |trainer| genders.include?(trainer.gender)}
     # && trainer.age >= params[:minage].to_i && trainer.age <= params[:maxage].to_i}
  end

  def show
    @trainer = User.find(params[:id])
    @trainings = @trainer.trainings
    @trainingsessions = @trainer.training_sessions
    @reviews = @trainer.reviews
    @average_rating = @reviews.exists? ? @reviews.sum(:stars) / @reviews.size : @reviews.sum(:stars) / 1

    # @filtered_markers = @trainingsessions.each() do .unique get  unique lat & long
    @markers = @trainingsessions.geocoded.map do |trainingsession|
      {
        lat: trainingsession.latitude,
        lng: trainingsession.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { trainingsession: trainingsession })
      }
    end
  end
end
