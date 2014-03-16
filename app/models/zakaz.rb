class Zakaz < ActiveRecord::Base
  attr_accessible :name, :phone, :variant_id, :type

  validates :name, :presence => true, length: { minimum: 2, maximum: 40 }
  validates :phone, :presence => true, length: { minimum: 6, maximum: 21 }

  belongs_to :variant
end
