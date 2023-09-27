class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.date :admit_date
      t.string :status
      t.string :assigned_Dr

      t.timestamps
    end
  end
end
