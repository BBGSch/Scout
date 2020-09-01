class TrainersController < ApplicationController
  def index
    @trainers = User.where(trainers: true)
  end

  def show

  end
end
