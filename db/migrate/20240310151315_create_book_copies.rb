class CreateBookCopies < ActiveRecord::Migration[7.1]
  def change
    create_table :book_copies do |t|
      t.integer :book_format

      t.timestamps
    end
  end
end
