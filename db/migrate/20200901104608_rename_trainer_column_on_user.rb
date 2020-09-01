class RenameTrainerColumnOnUser < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :trainer?, :trainer
  end
end
