class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :book_id, null: false
      t.text :review, null: false
      t.integer :value, null: false
      t.integer :user_id, null: false
      t.string :headline, null: false

      t.timestamps null: false
    end
  end
end
