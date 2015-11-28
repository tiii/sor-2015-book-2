class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end

    create_join_table :books, :carts
  end
end
