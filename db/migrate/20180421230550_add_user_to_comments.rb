class AddUserToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :user, :reference
  end
end
