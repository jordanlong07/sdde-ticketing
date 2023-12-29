class AddRoleToUserRole < ActiveRecord::Migration[7.1]
  def change
    add_column :user_roles, :role, :string
  end
end
