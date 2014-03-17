# encoding: utf-8

class StaticPagesController < ApplicationController
  add_breadcrumb "Главная", :root_path, :title => "Вернуться на главную"

  def index

  end

  def about
    @title = "О компании"
    add_breadcrumb @title

    @variants = Variant.where(:status => 0).limit(4).order('created_at DESC')
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

    @message = Message.new
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

    @zakaz = Zakaz.new
  end

  def toadvanceasite
    @title = "Продвижение сайтов"
    add_breadcrumb "Услуги", "/services.html"
    add_breadcrumb @title
  end

  def messagecreate
    @message = Message.new(params[:message])

    if @message.save(params[:message])
      flash[:success] = "Ваше сообщение отправленно. Наш менеджер свяжется с Вами в ближайшее время."
    else
      flash[:danger] = "Сообщение не отправленно. Вы не заполнили, либо не правильно заполнили одно из обязательных полей."
    end
      redirect_to "/contacts.html"
  end
end