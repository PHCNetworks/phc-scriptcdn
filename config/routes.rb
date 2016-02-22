Phcscriptcdn::Engine.routes.draw do
  namespace :scriptcdn do
    resources :scripturls
  end
  namespace :scriptcdn do
    resources :scriptversions
  end
  namespace :scriptcdn do
    resources :scripts
  end
end
