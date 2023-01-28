class AddLibIdToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :lib_id, :integer
    add_index :books, :lib_id
  end
end
