module Phcscriptcdn
  class Engine < ::Rails::Engine

    # Main Dependencies
    require 'paper_trail'

		# PHCEngines & Theme Dependencies
    require 'phcnotifi'
    require 'phctitleseo'

    require 'phctheme1'
    require 'phctheme2'
    require 'phcadmin1'
    require 'phcadmin2'
    require 'phcadmin3'

    # UI & Frontend Dependencies
    require 'country_select'
    require 'gravtastic'
    require 'jquery-rails'
    require 'jquery-ui-rails'
    require 'sass-rails'
    require 'webpacker'

    # API Dependencies
    require 'rabl'
    require 'oj'
    require 'multi_json'
    require 'responders'

    # Clean URLS
    require 'friendly_id'

    # WYSIWYG Editor Dependencies
    require 'tinymce-rails'

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

    # Load Language Files
    config.before_initialize do
      config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    end

  end
end
