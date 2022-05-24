class CreateUserManagements < ActiveRecord::Migration[6.1]
  def change
    create_table :user_managements do |t|

      t.timestamps
    end
  end
end
