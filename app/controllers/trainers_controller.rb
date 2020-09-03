class TrainersController < ApplicationController
  def index
    @trainers = User.where(trainer: true)
  end

  def show
    @trainer = User.find(params[:id])
    @trainings = @trainer.trainings
    @trainingsessions = @trainer.training_sessions
    @markers = @trainingsessions.geocoded.map do |trainingsession|
      {
        lat: trainingsession.latitude,
        lng: trainingsession.longitude
      }
    end
  end
end
