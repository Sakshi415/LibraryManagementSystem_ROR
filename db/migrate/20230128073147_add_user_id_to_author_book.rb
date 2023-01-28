class AddUserIdToAuthorBook < ActiveRecord::Migration[7.0]
  def change
    add_column :author_books, :user_id, :integer
    add_index :author_books, :user_id
  end
end
