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
    @markers = @trainingsessions.geocoded.map do |trainingsession|
      {
        lat: trainingsession.latitude,
        lng: trainingsession.longitude
      }
    end
  end
end
