module Phcscriptcdn
  class Engine < ::Rails::Engine

    # Admin Panel Theme Dependencies
    require 'phcadmin1'
    require 'phcadmin2'
    require 'phcadmin3'
    require 'phcadmin4'
    require 'phcadmin5'

    # Website Theme Dependencies
    require 'phctheme1'
    require 'phctheme2'
    require 'phctheme3'

    # PHC Helper Dependencies
    require 'phcnotifi'
    require 'phctitleseo'

    # PHC Engine Dependencies
    require 'phcaccounts'

    # UI & URL Frontend Dependencies
    require 'country_select'
    require 'gravtastic'
    require 'friendly_id'

    # File Upload & Service Dependencies
    require 'aws-sdk-s3'
    require 'gmaps-autocomplete-rails'
    require 'google-cloud-storage'
    require 'mini_magick'

    # Database & Paper Trail Dependencies
    require 'paper_trail'
    require 'pg'

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
