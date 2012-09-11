Nathanphotos::Application.routes.draw do
	root to: 'site#index'
	get 'about' => 'site#about', as: :about
	get 'contact' => 'site#contact', as: :contact
	get 'weddings' => 'site#weddings', as: :weddings

	resources :galleries do
		resources :photographs, except: [:index]
	end

	resources :services
end