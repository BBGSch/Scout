class TrainingSessionsController < ApplicationController

  def index
    @trainingsessions = TrainingSession.all
    @training = Training.find(params[:training_id])
  end

  def show
    @trainingsession = TrainingSession.find(params[:id])
    @training = @trainingsession.training
  end

  def new
    @trainingsession = TrainingSession.new
    @training = Training.find(params[:training_id])
  end

  def create
    @trainingsession = TrainingSession.new(trainingsession_params)
    @training = Training.find(params[:training_id])
    @trainingsession.training = @training
      if @trainingsession.save
        redirect_to training_session_path(@trainingsession)
      else
        render :new
      end
  end

  def edit
    @trainingsession = TrainingSession.find(params[:id])
    @training = @trainingsession.training
  end

  def update
    @trainingsession = TrainingSession.find(params[:id])
    @training = @trainingsession.training
    @trainingsession.update(trainingsession_params)
    if @trainingsession.save
      redirect_to training_session_path(@trainingsession), notice: 'Trainingsession was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @trainingsession = TrainingSession.find(params[:id])
    @training = @trainingsession.training
    @trainingsession.destroy
    redirect_to training_training_sessions_path(@training)
  end

  private

  def trainingsession_params
    params.require(:training_session).permit(:time, :training_id, :capacity, :location, :latitude, :longitude)
  end

end
