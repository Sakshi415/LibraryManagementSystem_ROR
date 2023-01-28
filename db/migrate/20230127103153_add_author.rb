class AddAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :author, :boolean, default: false

  end
end
