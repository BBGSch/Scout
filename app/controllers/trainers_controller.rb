class TrainersController < ApplicationController
  def index
    @trainers = User.where(trainer: true)
  end

  def show
    @trainer = User.find(params[:id])
    @trainings = @trainer.trainings
  end
end
