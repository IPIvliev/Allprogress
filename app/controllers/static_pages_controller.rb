# encoding: utf-8

class StaticPagesController < ApplicationController
  add_breadcrumb "Главная", :root_path, :title => "Вернуться на главную"

  def index

  end

  def about
    @title = "О компании"
    add_breadcrumb @title
  end

  def catalogue
    @title = "Магазин сайтов"
    add_breadcrumb @title

    @variants = Variant.where(:status => 0).order('created_at DESC')
  end

  def blog
    @title = "Блог"
    add_breadcrumb @title

    @articles = Article.paginate(:page => params[:page], :per_page => 3).order('created_at DESC')
  end

  def services
    @title = "Услуги"
    add_breadcrumb @title
  end

  def contacts
    @title = "Контакты"
    add_breadcrumb @title
  end

  def portfolio
    @title = "Портфолио"
    add_breadcrumb @title

    @variants = Variant.where(:status => 2)
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