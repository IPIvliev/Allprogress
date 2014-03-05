Allprogress::Application.routes.draw do

#Общие страницы
  get "/index.html", to: "static_pages#index"
  get "/about.html", to: "static_pages#about"
  get "/price.html", to: "static_pages#price"
  get "/articles.html", to: "static_pages#articles"
  get "/services.html", to: "static_pages#services"
  get "/contacts.html", to: "static_pages#contacts"
  get "/portpholio.html", to: "static_pages#portpholio"

#Корневая страница
  root :to => 'static_pages#index'

end
