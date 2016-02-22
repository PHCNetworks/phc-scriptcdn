Phcscriptcdn::Engine.routes.draw do

	namespace :scriptcdn do
		resources :scripts do
			resources :scripturls
		end
		resources :scriptversions
	end

end
