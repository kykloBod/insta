class RemoveUsernameFromComment < ActiveRecord::Migration[7.0]
  def change 
    remove_column :comments, :username
  end
end
