require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Frontend::ListingsController < ApplicationController

    # Change Layout
    layout '/layouts/phcscriptcdn/frontend.html.erb'

    # Script Listing Index
    def index
      @script_listings_index = Script::Listing.all
    end

    # Script Listing Post
    def show
      @script_listings_single = Script::Listing.friendly.find(params[:id])
    end

  end
end
