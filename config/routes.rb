Phcscriptcdn::Engine.routes.draw do

	# Script CDN Listing System
	namespace :scriptcdn do
		resources :scripts
		resources :scriptversions do
			resources :scripturls
		end
	end

end