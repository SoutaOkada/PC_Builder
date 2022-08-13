class CreateDrives < ActiveRecord::Migration[6.1]
  def change
    create_table :drives do |t|
      t.string :name
      t.integer :price
      t.references :pc

      t.timestamps
    end
  end
end
