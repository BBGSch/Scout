class ChangeTrainingSessionsColumnTimetoDateTime < ActiveRecord::Migration[6.0]
  def change
    remove_column :training_sessions, :time
    add_column :training_sessions, :time, :datetime
  end
end
