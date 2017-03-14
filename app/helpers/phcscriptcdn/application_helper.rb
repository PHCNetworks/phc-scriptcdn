module Phcscriptcdn
  module ApplicationHelper

    # Add Active to Menu
    def is_active_controller(controller_name)
      params[:controller] == controller_name ? "active open selected" : nil
    end

    def is_active_action(action_name)
      params[:action] == action_name ? "active" : nil
    end

  end
end