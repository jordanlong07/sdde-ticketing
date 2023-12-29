class AddFieldsToAssignedTo < ActiveRecord::Migration[7.1]
  def change
    add_column :tickets, :assigned_to, :string
    add_column :tickets, :assigned_by, :string

  end
end
