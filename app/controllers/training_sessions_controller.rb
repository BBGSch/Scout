class TrainingSessionsController < ApplicationController

  def index
    @trainingsessions = TrainingSession.all
    @training = Training.find(params[:training_id])

     @markers = @trainingsessions.geocoded.map do |trainingsession|
      {
        lat: trainingsession.latitude,
        lng: trainingsession.longitude
      }
    end
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
        schedule(@trainingsession, @trainingsession.frequency)
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
    params.require(:training_session).permit(:time, :training_id, :capacity, :location, :frequency, :latitude, :longitude)
  end

  def schedule(training_session, frequency)
    
    

    if frequency == "weekly"
      last_sesh = training_session.dup
      count = 0
      51.times do
        new_sesh = last_sesh.dup
        new_sesh.time += 7.days
        new_sesh.save
        last_sesh = new_sesh.dup
        count += 1
      end
      flash.notice = " #{last_sesh.training.training_sessions.count} weekly sessions saved"

    elsif frequency == "biweekly"
      last_sesh = training_session.dup
      count = 0
      25.times do
        new_sesh = last_sesh.dup
        new_sesh.time += 14.days
        new_sesh.save
        last_sesh = new_sesh.dup
        count += 1
      end
      flash.notice = " #{last_sesh.training.training_sessions.count} weekly sessions saved"
    else
      last_sesh = training_session.dup
      count = 0
      11.times do
        new_sesh = last_sesh.dup
        new_sesh.time += 1.months
        new_sesh.save
        last_sesh = new_sesh.dup
        count += 1
      end
      flash.notice = " #{last_sesh.training.training_sessions.count} weekly sessions saved"
    end
  end

end
