class Variant < ActiveRecord::Base
  attr_accessible :articul, :company, :description, :picture, :price, :status, :url, :tags

  mount_uploader :picture, PictureUploader
end
