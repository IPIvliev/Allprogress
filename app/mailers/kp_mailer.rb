# encoding: utf-8

class KpMailer < ActionMailer::Base
   default from: "infocom-nn@yandex.ru"

  def kp_email(mail)

  	attachments["kp_allprogress.doc"] = File.read('public/kp_allprogress.doc', :mode => 'rb')

    mail(to: mail, subject: 'Коммерческое предложение на создание, сопровождение и продвижение сайтов')
  end
end
