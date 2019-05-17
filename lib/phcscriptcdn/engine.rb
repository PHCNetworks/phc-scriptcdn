module Phcscriptcdn
	class Engine < ::Rails::Engine

		# PHCTheme Dependencies
		require 'phctheme1'
		require 'phctheme2'
		require 'phctheme3'
		require 'phctheme4'
		require 'phctheme5'
		require 'phctheme6'
		require 'phctheme7'

		# PHCAdmin Dependencies
		require 'phcadmin1'
		require 'phcadmin2'
		require 'phcadmin3'
		require 'phcadmin4'
		require 'phcadmin5'
		require 'phcadmin6'
		require 'phcadmin7'

		# PHCHelper Dependencies
		require 'phccorehelpers'
		require 'phcmenus'
		require 'phcnotifi'
		require 'phctitleseo'

		# Frontend Dependencies
		require 'gravtastic'
		require 'friendly_id'

		# Upload Dependencies
		require 'aws-sdk-s3'
		require 'google-cloud-storage'
		require 'mini_magick'

		# Database Dependencies
		require 'paper_trail'
		require 'pg'

		# Payment Dependencies
		require 'phcaccounts'

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
			g.fixture_replacement :factory_bot,
				dir: "spec/factories"
		end

		# Load Requried Helper Files
		config.to_prepare do
			Phcaccounts::ApplicationController.helper(ApplicationHelper)
			Phccorehelpers::ApplicationController.helper(ApplicationHelper)
			Phcmenus::ApplicationController.helper(ApplicationHelper)
			Phcnotifi::ApplicationController.helper(ApplicationHelper)
			Phctitleseo::ApplicationController.helper(ApplicationHelper)
		end

	end
end
