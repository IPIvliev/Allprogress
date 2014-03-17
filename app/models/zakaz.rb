# encoding: utf-8

class Zakaz < ActiveRecord::Base
  attr_accessible :name, :phone, :variant_id, :theme, :specification

  validates :name, :presence => true, length: { minimum: 2, maximum: 50 }
  validates :phone, :presence => true, length: { minimum: 6, maximum: 21 }

  belongs_to :variant

  def specification_variant
	case specification
		when 1
			return "Начальный"
		when 2
			return "Стандартный"
		when 3
			return "Расширенный"
	end
  end
end
