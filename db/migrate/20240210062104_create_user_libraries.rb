class CreateUserLibraries < ActiveRecord::Migration[7.1]
  def change
    create_table :user_libraries do |t|
      t.references :user, null: false, foreign_key: true
      t.references :library, null: false, foreign_key: true

      t.timestamps
    end
  end
end
