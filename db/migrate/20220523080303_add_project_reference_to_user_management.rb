class AddProjectReferenceToUserManagement < ActiveRecord::Migration[6.1]
  def change
    drop_table :user_managements
  end
end
