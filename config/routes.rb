Allprogress::Application.routes.draw do

#Общие страницы
  get "static_pages/about"
  get "static_pages/price"
  get "static_pages/articles"
  get "static_pages/help"
  get "static_pages/contacts"

#Корневая страница
  root :to => 'static_pages#index'

end
