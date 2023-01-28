class AddBookIdToAuthorBook < ActiveRecord::Migration[7.0]
  def change
    add_column :author_books, :book_id, :integer
    add_index :author_books, :book_id
  end
end
