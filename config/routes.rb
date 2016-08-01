Phcscriptcdn::Engine.routes.draw do

  namespace :script do
    resources :licences
  end
	# CDN Frontend
	namespace :frontend do
		# Frontend Routes
		resources :cdnpages
	end

	# Script CDN Listing System
	namespace :script do
		# Main Script Module
		resources :listings, class_name: 'Phcscriptcdn::Script::Listing' do
			resources :urls, class_name: 'Phcscriptcdn::Script::Url'
		end
		resources :extensions, class_name: 'Phcscriptcdn::Script::Extensions'
		resources :versions, class_name: 'Phcscriptcdn::Script::Versions'
		resources :authors, class_name: 'Phcscriptcdn::Script::Authors'
	end
	
	# Application API
	namespace :api, :path => "", :constraints => {:subdomain => "api"} do
		# Routes for API
		resources :mains, defaults: {format: 'json'}
		resources :informations, defaults: {format: 'json'}
		resources :versions, defaults: {format: 'json'}
	end

end
