class CreateZakazs < ActiveRecord::Migration
  def change
    create_table :zakazs do |t|
      t.integer :variant_id
      t.string :name
      t.string :phone
      t.boolean :answer
      t.string :theme
      t.integer :specification

      t.timestamps
    end
  end
end
