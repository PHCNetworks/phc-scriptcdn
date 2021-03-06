Phcscriptcdn::Engine.routes.draw do

  # API Routes
  namespace :api, :path => "", :constraints => {:subdomain => "api"} do
    namespace :v1 do
      resources :mains, defaults: {format: 'json'}
      resources :informations, defaults: {format: 'json'}
      resources :versions, defaults: {format: 'json'}
    end
  end

  # Script CDN Routes
  namespace :script do
    resources :listings, class_name: 'Phcscriptcdn::Script::Listing' do
      resources :urls, class_name: 'Phcscriptcdn::Script::Url'
    end
    resources :authors, class_name: 'Phcscriptcdn::Script::Author'
    resources :extensions, class_name: 'Phcscriptcdn::Script::Extension'
    resources :versions, class_name: 'Phcscriptcdn::Script::Version'
    resources :licences, class_name: 'Phcscriptcdn::Script::Licence'
  end

  # PHCAccounts Routes
  mount Phcaccounts::Engine, :at => '/'

end
