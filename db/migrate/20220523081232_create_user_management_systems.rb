class CreateUserManagementSystems < ActiveRecord::Migration[6.1]
  def change
    create_table :user_management_systems do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
