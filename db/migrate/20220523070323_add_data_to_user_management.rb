class AddDataToUserManagement < ActiveRecord::Migration[6.1]
  def change
    add_column :user_managements, :name, :string
  end
end
