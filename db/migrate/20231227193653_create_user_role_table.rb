class CreateUserRoleTable < ActiveRecord::Migration[7.1]
  def change
    create_table :user_role_tables do |t|
      t.string :role

      t.timestamps
    end

  end

end
