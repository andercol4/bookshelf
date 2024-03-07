class AddPublicationToBooks < ActiveRecord::Migration[7.1]
  def change
    add_reference :books, :publication, foreign_key: true
  end
end
