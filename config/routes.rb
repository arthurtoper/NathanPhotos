Nathanphotos::Application.routes.draw do
	root to: 'site#index'
	
	get 'about' => 'site#about', as: :about
	get 'contact' => 'site#contact', as: :contact
	get 'weddings' => 'site#weddings', as: :weddings
	get 'packages' => 'site#packages', as: :packages
	get 'admin' => 'site#admin', as: :admin

	resources :galleries do
		resources :photographs, except: [:index]
	end

	get 'admin/galleries' => 'galleries#admin_index', as: :admin_galleries

	resources :services

  	post "admin/login" => "admin#login", :as => :admin_login
  	get "admin/logout" => "admin#logout", :as => :admin_logout

end