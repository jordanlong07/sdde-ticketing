class AddRoleToUser < ActiveRecord::Migration[7.1]
  def change
    # Make role not null in the user role table
    change_column_null :user_roles, :role, false
    # Make role unique in the user role table
    add_index :user_roles, :role, unique: true

    # add a role from the user role table and add a default value of field engineer
    add_reference :users, :role, foreign_key: { to_table: :user_roles }, default: 1
  end
end
