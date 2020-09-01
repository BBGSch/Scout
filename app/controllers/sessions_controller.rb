class SessionsController < ApplicationController
  def index
    # getting all the sessions belonging to the signed in trainer
    @sessions = current_user.training_sessions
  end

  def show
  end

  def new
    # getting the training, to which the session will belong
    @training = Training.find(params[:training_id])
    @session = TrainingSession.new
  end

  def create
    @training = Training.find(params[:training_id])
    @session = @training.training_sessions.build(session_params)
    # applying the simple_form parameters to the new training

    if @session.save
        # route was pointing to index and not show
        redirect_to training_sessions_path(@training)
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

  def session_params
    params.require(:training_session).permit(:time, :capacity, :location)
  end
  end

  # http://localhost:3000/trainings/15/sessions
