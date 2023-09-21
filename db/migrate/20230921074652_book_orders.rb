class BookOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :books_orders, id: false do |t|
      t.belongs_to :book
      t.belongs_to :order
    end 
  end
end
