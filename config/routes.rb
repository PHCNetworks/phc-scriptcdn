Phcscriptcdn::Engine.routes.draw do
	
	# Notification System
	mount Phcnotifi::Engine, :at => '/' 

	# Script CDN Listing System
	namespace :scriptcdn do
		resources :scripts
		resources :scriptversions do
			resources :scripturls
		end
	end

end
