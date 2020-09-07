class AddColumnToTrainingSession < ActiveRecord::Migration[6.0]
  def change
    add_column :training_sessions, :frequency, :integer
  end
end
