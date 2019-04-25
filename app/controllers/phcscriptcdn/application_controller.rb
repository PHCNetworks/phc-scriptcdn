module Phcscriptcdn
    class ApplicationController < ActionController::Base
    
        # Security Filters
        protect_from_forgery with: :exception
    
        # Load Requried Helper Files
        helper Phccorehelpers::Engine.helpers
        helper Phcmenus::Engine.helpers
        helper Phctitleseo::Engine.helpers
        helper Phcnotifi::Engine.helpers
        helper Phcaccounts::Engine.helpers
    
        # Papertrail Whodunnit Username
        def user_for_paper_trail
          current_user ? current_user.username : 'Public user'
        end
    
        private
    
    end
end
