class AddIntegerTypeToProject < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :user_id
    add_column :projects, :user_id, :integer
  end
end
