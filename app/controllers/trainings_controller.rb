class TrainingsController < ApplicationController
  def show
    @training = Training.find(params[:id])
  end

  def new
    @trainer = User.find(params[:trainer_id])
    @training = Training.new
    # @training.user = User.find(params[:trainer_id])
  end

  def create
    @trainer = User.find(params[:trainer_id])
    @training = Training.new
    @training.user = @trainer
      if @training.save
        redirect_to trainer_trainings_path
      else
        render :new
      end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def training_params
    params.require(:training).permit(:name, :description)
  end
end
