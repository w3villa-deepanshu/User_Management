class ChangeModelToAdmins < ActiveRecord::Migration[6.1]
  def change
    rename_table :admin, :admins
  end
end
