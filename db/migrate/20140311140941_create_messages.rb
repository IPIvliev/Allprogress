class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :text
      t.boolean :answer, :default => false

      t.timestamps
    end
  end
end
