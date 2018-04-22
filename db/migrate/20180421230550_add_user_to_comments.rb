class AddUserToComments < ActiveRecord::Migration[5.1]
  def change
  change_table :comments do |c|
    c.references :user
  end
end
end
