class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end

    create_table :books_carts do |t|
      t.references :book, index: true, foreign_key: true
      t.references :cart, index: true, foreign_key: true
    end
  end
end
