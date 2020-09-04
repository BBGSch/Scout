class AddColumnsToTraining < ActiveRecord::Migration[6.0]
  def change
    add_column :trainings, :price, :integer
    add_column :trainings, :duration, :time
    add_column :trainings, :category, :integer


  end
end
