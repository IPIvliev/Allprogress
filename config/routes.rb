Allprogress::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :articles
  resources :variants


#Общие страницы
  get "/index.html", to: "static_pages#index"
  get "/about.html", to: "static_pages#about"
  get "/catalogue.html", to: "static_pages#catalogue"
  get "/blog.html", to: "static_pages#blog"
  get "/services.html", to: "static_pages#services"
  get "/contacts.html", to: "static_pages#contacts"
  get "/portfolio.html", to: "static_pages#portfolio"
  get "/services/tomakeasite.html", to: "static_pages#tomakeasite"
  get "/services/toserviceasite.html", to: "static_pages#toserviceasite"
  get "/services/toadvanceasite.html", to: "static_pages#toadvanceasite"

#Корневая страница
  root :to => 'static_pages#index'

end
