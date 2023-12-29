class AddTicketDetailsToTable < ActiveRecord::Migration[7.1]
  def change
    add_column :tickets, :title, :integer, null: false
    add_column :tickets, :ticket_description, :string
    add_column :tickets, :due_date, :datetime
    add_column :tickets, :status, :string
    add_column :tickets, :priority, :string
  end
end
