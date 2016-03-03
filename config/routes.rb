Phcscriptcdn::Engine.routes.draw do
	
	# Notification System
	mount Phcnotifi::Engine, :at => '/' 

	# Script CDN Listing System
	namespace :scriptcdn do
		resources :scripts do
			resources :scripturls
		end
		resources :scriptversions
	end

end
