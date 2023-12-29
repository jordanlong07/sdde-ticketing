class ChangeTicketTitleFromIntegerToString < ActiveRecord::Migration[7.1]
  def change
    change_column :tickets, :title, :string
    # drop all tickets
    Ticket.delete_all
  end
end
