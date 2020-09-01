class RemoveDateFromTrainingSessions < ActiveRecord::Migration[6.0]
  def change
    remove_column :training_sessions, :date, :date
  end
end
