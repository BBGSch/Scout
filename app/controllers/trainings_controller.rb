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
    # applying the simple_form parameters to the new training
    @training = @trainer.trainings.build(training_params)
    @training.user = @trainer
      if @training.save
        # route was pointing to index and not show
        redirect_to trainer_training_path(@trainer, @training)
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
