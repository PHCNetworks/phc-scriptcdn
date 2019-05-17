require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Script::ListingsController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsproHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_script_listing, only: [:show, :edit, :update, :destroy]

    # INDEX
    def index
      @script_listings = Script::Listing.all
    end

    # SHOW
    def show
      @script_listings = Script::Listing.friendly.find(params[:id])
      @versions = Phcscriptcdn::ListingVersions.where(item_id: params[:id], item_type: 'Phcscriptcdn::Script_::Listing')
    end

    # NEW
    def new
      @script_listing = Script::Listing.new
    end

    # EDIT
    def edit
    end

    # CREATE
    def create
      @script_listing = Script::Listing.new(script_listing_params)
      @script_listing.user_id = current_user.id
      if @script_listing.save
        redirect_to script_listings_path, :flash => { :success => 'Listing was successfully created.' }
      else
        render :new
      end
    end

    # UPDATE
    def update
      if @script_listing.update(script_listing_params)
        redirect_to script_listings_path, :flash => { :success => 'Listing was successfully updated.' }
      else
        render :edit
      end
    end

    # DELETE
    def destroy
      @script_listing.destroy
      redirect_to script_listings_path, :flash => { :error => 'Listing was successfully destroyed.' }
    end

    private

    # Common Callbacks
    def set_script_listing
      @script_listing = Script::Listing.friendly.find(params[:id])
    end

    # Whitelist
    def script_listing_params
      params.require(:script_listing).permit(:script_title, :script_description, :script_source, :script_website, :script_github, :script_initial_release, :script_lastest_release, :script_beta_release, :script_lastest_release_cdn, :script_status, :slug, :user_id, :version_id, :author_id, :licence_id)
    end

  end
end
