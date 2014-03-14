class Zakaz < ActiveRecord::Base
  attr_accessible :name, :phone, :variant_id

  validates :name, :presence => true, length: { minimum: 2, maximum: 40 }
  validates :phone, :presence => true, length: { minimum: 7, maximum: 21 }
  validates :variant_id, :presence => true

  belongs_to :variant
end
