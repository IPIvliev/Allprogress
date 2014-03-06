Allprogress::Application.routes.draw do

#Общие страницы
  get "/index.html", to: "static_pages#index"
  get "/about.html", to: "static_pages#about"
  get "/price.html", to: "static_pages#price"
  get "/blog.html", to: "static_pages#blog"
  get "/services.html", to: "static_pages#services"
  get "/contacts.html", to: "static_pages#contacts"
  get "/portpholio.html", to: "static_pages#portpholio"
  get "/services/tomakeasite.html", to: "static_pages#tomakeasite"
  get "/services/toserviceasite.html", to: "static_pages#toserviceasite"
  get "/services/toadvanceasite.html", to: "static_pages#toadvanceasite"

#Корневая страница
  root :to => 'static_pages#index'

end
