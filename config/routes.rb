Diccionario::Application.routes.draw do
  
   resources :notificacion
   resources :solicitudes
   resources :administrador

  get "solicitud/index"

  authenticated :user do
    root :to => 'administrador#index'   
    scope "admin" do
	    resources :expertos

	  	resources :categorias

	  	resources :terminos
	end
  get "/buscart"=>"administrador#buscar"

  end
  root :to => "home#index"
  get "/buscar"=>"home#buscar"
  get "/agregar"=>"home#agregar"
  get "/sendmail"=>"notificacion#sendmail"
  devise_for :users
  resources :users
end