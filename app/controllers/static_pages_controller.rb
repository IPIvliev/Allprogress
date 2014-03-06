# encoding: utf-8

class StaticPagesController < ApplicationController
  add_breadcrumb "Главная", :root_path, :title => "Вернуться на главную"

  def index

  end

  def about
    @title = "О компании"
    add_breadcrumb @title
  end

  def price
    @title = "Стоимость"
    add_breadcrumb @title
  end

  def blog
    @title = "Блог"
    add_breadcrumb @title
  end

  def services
    @title = "Услуги"
    add_breadcrumb @title
  end

  def contacts
    @title = "Контакты"
    add_breadcrumb @title
  end

  def portpholio
    @title = "Портфолио"
    add_breadcrumb @title
  end

  def tomakeasite
    @title = "Создание сайтов"
    add_breadcrumb "Услуги", "/services.html"
    add_breadcrumb @title
  end

  def toserviceasite
    @title = "Сопровождение сайтов"
    add_breadcrumb "Услуги", "/services.html"
    add_breadcrumb @title
  end

  def toadvanceasite
    @title = "Продвижение сайтов"
    add_breadcrumb "Услуги", "/services.html"
    add_breadcrumb @title
  end

end