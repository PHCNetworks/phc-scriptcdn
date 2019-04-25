Rails.application.routes.draw do

    # Index
    root :to => 'website/pages#index'
    
    # Mount PHCEngines
    mount Phcscriptcdn::Engine => "/"

end
