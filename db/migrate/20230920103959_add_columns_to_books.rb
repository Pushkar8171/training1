class AddColumnsToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :supplier, foreign_key:true
  end
end
