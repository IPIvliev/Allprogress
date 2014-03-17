class Article < ActiveRecord::Base
  attr_accessible :name, :picture, :text, :user_id

  mount_uploader :picture, BlogUploader
end
