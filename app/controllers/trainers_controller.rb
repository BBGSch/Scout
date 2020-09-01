class TrainersController < ApplicationController
  def index
    @trainers = User.where(trainer: true)
  end

  def show

  end
end
