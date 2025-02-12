class AddStatusToBooks < ActiveRecord::Migration[8.0]
  def change
    add_column :books, :status, :integer, null: false, default: 0
  end
end
