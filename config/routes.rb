Phcscriptcdn::Engine.routes.draw do

  namespace :script do
    resources :versions
  end
  namespace :script do
    resources :listings
  end
  namespace :script do
    resources :extensions
  end
  namespace :script do
    resources :authors
  end
  namespace :script do
    resources :urls
  end
	# CDN Frontend
	namespace :frontend do

		# Frontend Routes
		resources :cdnpages

	end

	# Script CDN Listing System
	namespace :scriptcdn do

		# Main Script Module
		resources :mains do
			resources :authors
			resources :urls
			resources :versions
			resources :informations
		end

	end
	
	# Application API
	namespace :api, :path => "", :constraints => {:subdomain => "api"} do

		# Routes for API
		resources :mains, defaults: {format: 'json'}
		resources :informations, defaults: {format: 'json'}
		resources :versions, defaults: {format: 'json'}

	end

end
