class CreatePcs < ActiveRecord::Migration[6.1]
  def change
    create_table :pcs do |t|
      t.references :cpu , foreign_key: true
      t.references :memory , foreign_key: true
      t.references :motherboard , foreign_key: true
      t.references :videocard , foreign_key: true
      t.references :case , foreign_key: true
      t.references :drive , foreign_key: true
      t.references :storage , foreign_key: true
      t.references :power , foreign_key: true
      t.references :system , foreign_key: true
      t.references :cpu_cooler , foreign_key: true
      t.references :fan , foreign_key: true
      t.references :other , foreign_key: true

      t.timestamps
    end
  end
end
