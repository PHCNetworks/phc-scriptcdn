class ApplicationController < ActionController::Base

  # Security Filters
  protect_from_forgery with: :exception

  # Load Requried Helper Files
  helper Phccorehelpers::Engine.helpers
  helper Phcmenus::Engine.helpers
  helper Phctitleseo::Engine.helpers
  helper Phcnotifi::Engine.helpers

end
