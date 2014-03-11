class Message < ActiveRecord::Base
  attr_accessible :answer, :email, :name, :phone, :text
end
