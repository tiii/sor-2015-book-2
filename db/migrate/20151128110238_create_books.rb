class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.text :desc
      t.float :price, null: false
      t.string :author, null: false
      t.string :genre
      t.string :isbn, null: false

      t.timestamps null: false
    end
  end
end
