Phcscriptcdn::Engine.routes.draw do

  # Frontend Routes
  namespace :frontend do
    resources :listings
  end

  # Script CDN Listing System
  namespace :script do
    # Main Script Module
    resources :listings, class_name: 'Phcscriptcdnpro::Script::Listing' do
      resources :urls, class_name: 'Phcscriptcdnpro::Script::Url'
    end
    resources :authors, class_name: 'Phcscriptcdnpro::Script::Author'
    resources :extensions, class_name: 'Phcscriptcdnpro::Script::Extension'
    resources :versions, class_name: 'Phcscriptcdnpro::Script::Version'
    resources :licences, class_name: 'Phcscriptcdnpro::Script::Licence'
  end

  # Application API
  namespace :api, :path => "", :constraints => {:subdomain => "api"} do
    namespace :v1 do
      # Routes for API
      resources :mains, defaults: {format: 'json'}
      resources :informations, defaults: {format: 'json'}
      resources :versions, defaults: {format: 'json'}
    end
  end

end