class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.string :picture
      t.integer :price
      t.string :url
      t.string :description
      t.integer :articul
      t.integer :status, :default => 0
      t.string :company

      t.timestamps
    end
  end
end
