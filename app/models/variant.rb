# encoding: utf-8

class Variant < ActiveRecord::Base
  attr_accessible :articul, :company, :description, :picture, :price, :status, :url, :tags

  mount_uploader :picture, PictureUploader

  has_many :zakazs

  def stage
  	case status

  	when 0
  	"<i class='orange fa fa-money' title='На продажу'></i>".html_safe
  	when 1
	"<i class='fa fa-cogs' title='В работе'></i>".html_safe
  	when 2
  	"<i class='fa fa-star' title='Продано'></i>".html_safe
  	end
  end
end
