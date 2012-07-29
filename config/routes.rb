Nathanphotos::Application.routes.draw do
	root to: 'site#index'
	get 'about' => 'site#about', as: :about
	get 'contact' => 'site#contact', as: :contact

	resources :galleries do
		resources :photographs, except: [:index]
	end

	resources :services
end