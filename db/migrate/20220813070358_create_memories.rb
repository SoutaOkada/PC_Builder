class CreateMemories < ActiveRecord::Migration[6.1]
  def change
    create_table :memories do |t|
      t.string :name
      t.integer :price
      t.references :pc

      t.timestamps
    end
  end
end
