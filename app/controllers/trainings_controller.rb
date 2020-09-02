class TrainingsController < ApplicationController
  def show
    @training = Training.find(params[:id])
  end

  def new
    @training = Training.new
    @trainer = current_user
  end

  def create
    @trainer = current_user
    @training = Training.new(training_params)
    @training.user = current_user
      if @training.save
        redirect_to training_path(@training)
      else
        render :new
      end
  end

  def edit
    @training = Training.find(params[:id])
    @trainer = current_user
  end

  def update
    @training = Training.find(params[:id])
    @trainer = current_user
    @training.update(training_params)
    if @training.save
      redirect_to training_path(@training), notice: 'Training was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    
    @training = Training.find(params[:id])
    @trainer = @training.user
    @training.destroy
    redirect_to trainer_path(@trainer)
  end

  private

  def training_params
    params.require(:training).permit(:name, :description, :user_id)
  end
end
