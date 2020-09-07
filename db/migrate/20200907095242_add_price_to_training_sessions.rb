class AddPriceToTrainingSessions < ActiveRecord::Migration[6.0]
  def change
    add_monetize :training_sessions, :price, currency: { present: false }
  end
end
