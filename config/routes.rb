Phcscriptcdn::Engine.routes.draw do

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
