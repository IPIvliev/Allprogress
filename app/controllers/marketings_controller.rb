# encoding: utf-8

class MarketingsController < ApplicationController
add_breadcrumb "Главная", :root_path, :title => "Вернуться на главную"

  def zakaz
    @title = "Список заказов"
    add_breadcrumb @title

  	@zakazs_site = Zakaz.where(:theme => "site").order('created_at DESC')
    @zakazs_service = Zakaz.where(:theme => "service").order('created_at DESC')
    @zakazs_advance = Zakaz.where(:theme => "advance").order('created_at DESC')
  end

  def marketing
    @title = "Маркетинг"
    add_breadcrumb @title

    @kps = Kp.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
    @messages = Message.order('created_at DESC')
  end

  def sent_kp
        @kp = Kp.new(params[:kp])
          if @kp.save
            KpMailer.kp_email(params[:kp][:email]).deliver
            flash[:success] = 'Коммерческое предложение успешно отправленно на ' + params[:kp][:email]
            redirect_to root_path
          else
            flash[:danger] = 'Вы не правильно заполнили адрес электронной почты.'
            redirect_to :back
          end
  end
end