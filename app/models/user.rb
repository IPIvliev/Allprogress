class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :url, :name, :uid, :avatar
  # attr_accessible :title, :body

  devise :omniauthable, :omniauth_providers => [:facebook, :vkontakte]

 def self.find_for_facebook_oauth(access_token)
    if user = User.where(:url => access_token.info.urls.Facebook).first
      user
    else 
      User.create!(
      	:uid => access_token.uid,
      	:provider => access_token.provider,
      	:url => access_token.info.urls.Facebook, 
      	:name => access_token.extra.raw_info.name, 
      	:avatar => access_token.info.image, 
      	:email => access_token.extra.raw_info.email, 
      	:password => Devise.friendly_token[0,20]) 
    end
  end

 def self.find_for_vkontakte_oauth(access_token)
    if user = User.where(:url => access_token.info.urls.Vkontakte).first
      user
    else 
      User.create!(
      	:uid => access_token.uid,
      	:provider => access_token.provider, 
      	:url => access_token.info.urls.Vkontakte, 
      :name => access_token.info.name, 
      :avatar => access_token.info.image,
      :email => "#{access_token.uid}@vk.vom", 
      :password => Devise.friendly_token[0,20]) 
    end
  end

end
