class CreateSystems < ActiveRecord::Migration[6.1]
  def change
    create_table :systems do |t|
      t.string :name
      t.integer :price
      t.references :pc

      t.timestamps
    end
  end
end
