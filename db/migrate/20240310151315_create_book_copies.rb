class CreateBookCopies < ActiveRecord::Migration[7.1]
  def change
    create_table :book_copies do |t|
      t.references :book, null: false, foreign_key: true
      t.integer :book_format

      t.timestamps
    end
  end
end
