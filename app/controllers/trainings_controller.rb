class TrainingsController < ApplicationController
  def index
    @trainings = search(params)
    @categories = Training.distinct.pluck(:category)
    @trainings.each do |t|
      unless t.nil? && t.training_sessions.nil?
        @session = t.training_sessions
        @markers = @session.geocoded.map do |trainingsession|
          {
            lat: trainingsession.latitude,
            lng: trainingsession.longitude
          }
        end
      end
    end
    @markers = @markers.uniq
  end

  def search(params)

    return Training.all if params.keys.length == 2
    sessions = TrainingSession.near(params[:location], 50)
    trainings = sessions.map{|session| session.training}.uniq
    if params[:category] != "All"
      trainings = trainings.select { |training| training.category.downcase.include?(params[:category].downcase)}
    end
    rating = params[:stars][0]
    # trainings = trainings.select { |training| training.reviews.map { |review| review.stars >= rating.to_i} }
    trainings = trainings.select { |training| (training.reviews.sum(:stars) / training.reviews.size) >= rating.to_i}
  end

  def show
    @training = Training.find(params[:id])
    @reviews = @training.reviews
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
    params.require(:training).permit(:name, :description, :user_id, :duration, :price, :category, photos: [])
  end
end
