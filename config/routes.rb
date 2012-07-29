Nathanphotos::Application.routes.draw do
	root to: 'galleries#index'

	resources :galleries do
		resources :photographs, except: [:index]
	end

	resources :services
end