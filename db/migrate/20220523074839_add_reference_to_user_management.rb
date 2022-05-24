class AddReferenceToUserManagement < ActiveRecord::Migration[6.1]
  def change
    add_reference :user_managements, :user, null: false, foreign_key: true
  end
end
