class AddingCommentFields < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :author, :integer
    add_column :comments, :body, :text
    add_column :comments, :ticket_id, :integer
    add_foreign_key :comments, :tickets

  end
end
