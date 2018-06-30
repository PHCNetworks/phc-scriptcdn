module Phcscriptcdn
  class Engine < ::Rails::Engine

    # Main Dependencies
    require 'phcaccountspro'
    require 'paper_trail'

    # PHCEngines & Theme Dependencies
    require 'phcnotifi'
    require 'phctitleseo'

    require 'phctheme1'
    require 'phctheme2'

    require 'phcadmin1'
    require 'phcadmin2'
    require 'phcadmin3'
    require 'phcadmin4'
    require 'phcadmin5'

    # UI & Frontend Dependencies
    require 'country_select'
    require 'gravtastic'

    # API Dependencies
    require 'httparty'
    require 'rabl'
    require 'oj'
    require 'multi_json'
    require 'responders'

    # Clean URLS
    require 'friendly_id'

    # Upload & Media Dependencies
    require 'carrierwave'
    require 'cloudinary'

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
      g.fixture_replacement :factory_bot, dir: "spec/factories"
    end

    # Load Requried Helper Files
    config.to_prepare do
      Phcnotifi::ApplicationController.helper(ApplicationHelper)
      Phctitleseo::ApplicationController.helper(ApplicationHelper)
    end

  end
end
