class TrainingsController < ApplicationController
  def show
    @training = Training.find(params[:id])
    @training_session = Training_session.new
  end

  def new
    @training = Training.new
    @training.user = User.find(params[])
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
