class CreateKps < ActiveRecord::Migration
  def change
    create_table :kps do |t|
      t.string :email

      t.timestamps
    end
  end
end
