class AddReferencesToUserFromPublication < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :user, foreign_key: true, null: false
  end
end
