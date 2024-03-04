class AddNameAndOwnerToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :owner, :boolean
  end
end
