class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :integer
    add_column :users, :bio, :text
    add_column :users, :rating, :integer
    add_column :users, :trainer?, :boolean
  end
end
