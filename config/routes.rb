Phcscriptcdn::Engine.routes.draw do

	# Script CDN Listing System
	namespace :scriptcdn do
		resources :scripts do
			resources :scripturls
		end
		resources :scriptversions
	end

end
