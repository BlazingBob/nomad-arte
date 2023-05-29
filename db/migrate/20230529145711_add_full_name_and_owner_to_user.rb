class AddFullNameAndOwnerToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :is_owner, :boolean, default: false
  end
end
