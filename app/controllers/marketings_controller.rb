# encoding: utf-8

class MarketingsController < ApplicationController
add_breadcrumb "Главная", :root_path, :title => "Вернуться на главную"

  def kps
    @title = "Коммерческие предложения"
    add_breadcrumb @title

  	@kps = Kp.order('created_at DESC')
  end

  def messages
    @title = "Вопросы пользователей"
    add_breadcrumb @title

  	@messages = Message.order('created_at DESC')
  end
end
