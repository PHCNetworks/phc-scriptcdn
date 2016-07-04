module Phcscriptcdn
	class ApplicationController < ActionController::Base

		# Security
		protect_from_forgery with: :exception

		# Load Helpers
		helper Phctitleseo::Engine.helpers
		#helper Phcnotifi::Engine.helpers

	end
end
