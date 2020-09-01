class AddAndRemoveColumnsInUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :age
    add_column :users, :birthdate, :string
  end
end
