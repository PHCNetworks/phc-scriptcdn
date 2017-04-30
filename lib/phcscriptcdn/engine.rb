module Phcscriptcdn
  class Engine < ::Rails::Engine

    # Main Dependencies
    require 'pg'
    require 'paper_trail'
    
    # PHCEngines & Theme Dependencies
    require 'phcnotifi'
    require 'phctitleseo'
    require 'phcadmin3'
    
    # UI & Frontend Dependencies
    require 'jquery-rails'
    require 'jquery-ui-rails'
    require 'sass-rails'
    require 'bootstrap-sass'
    require 'font-awesome-rails'
    require 'country_select'
    require 'gravtastic'
    
    # URLS
    require 'friendly_id'
    
    # API Dependencies
    require 'rabl'
    require 'oj'
    require 'multi_json'
    require 'responders'
    
    # Isolate Namespace
    isolate_namespace Phcscriptcdn
    
    # Testing Generator
    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: true,
        request_specs: false
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end
    
    # Load Requried Helper Files
    config.to_prepare do
      Phcnotifi::ApplicationController.helper(ApplicationHelper)
      Phctitleseo::ApplicationController.helper(ApplicationHelper)
    end

  end
end
