class CreateTrainingSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :training_sessions do |t|
      t.date :date
      t.time :time
      t.references :training, null: false, foreign_key: true
      t.integer :capacity
      t.string :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
