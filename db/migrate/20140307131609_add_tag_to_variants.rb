class AddTagToVariants < ActiveRecord::Migration
  def change
  	add_column :variants, :tags, :string
  end
end
