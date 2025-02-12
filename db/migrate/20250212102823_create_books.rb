class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :author, null: false
      t.string :title, null: false
      t.string :isbn, null: false

      t.timestamps
    end
    add_index :books, :isbn, unique: true
  end
end
