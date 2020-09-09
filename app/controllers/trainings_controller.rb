class TrainingsController < ApplicationController
  def index
    @trainings = search(params)
    @trainings = @trainings.select{|t| t.training_sessions.size > 0}.sort_by do |a|
      a.training_sessions.first.time
    end
    @categories = Training.distinct.pluck(:category)
    @markers = []
    @trainings.each do |t|
      unless t.nil? && t.training_sessions.nil?
        @session = t.training_sessions
        @session.geocoded.map do |trainingsession|
          @markers.push({
            lat: trainingsession.latitude,
            lng: trainingsession.longitude,
            infoWindow: render_to_string(partial: "info_window", locals: { trainingsession: trainingsession })
          })
        end
      end
    end
    @markers = @markers.uniq
  end

  def search(params)
    return Training.all if params.keys.length == 2
    if params[:location] == ""
     params[:location] = "Amsterdam"
    end
    sessions = TrainingSession.near(params[:location], 50)

    if params[:datetime] && params[:datetime] != ""

      datetime_from_search = DateTime.parse(params[:datetime])

      start_time = datetime_from_search - 2.hours
      end_time = datetime_from_search + 2.hours
      sessions = sessions.where(time: start_time..end_time)
    end
    trainings = sessions.map{|session| session.training}.uniq

    if params[:category] && params[:category] != "All"
      trainings = trainings.select { |training| training.category.downcase.include?(params[:category].downcase)}.uniq
    end

    if params[:stars]
      rating = params[:stars][0]
    else
      rating = 3
    end
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
