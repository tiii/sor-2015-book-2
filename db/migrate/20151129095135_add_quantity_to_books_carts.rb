class AddQuantityToBooksCarts < ActiveRecord::Migration
  def change
    add_column :books_carts, :quantity, :integer, null:false, default:1
  end
end
