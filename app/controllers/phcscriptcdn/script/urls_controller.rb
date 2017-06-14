require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Script::UrlsController < ApplicationController

    # Filters & Security
    before_action :set_script_url, only: [:show, :edit, :update, :destroy]

    # INDEX - Script Authors
    def index
      script_listing = Script::Listing.find(params[:listing_id])
      @script_urls = script_listing.urls
    end

    # DETAILED PROFILE - Script Authors
    def show
      script_listing = Script::Listing.find(params[:listing_id])
      @script_url = script_listing.urls.find(params[:id])
    end

    # NEW - Script Athors
    def new
      script_listing = Script::Listing.find(params[:listing_id])
      @script_url = script_listing.urls.build
    end

    # EDIT - Script Athors
    def edit
      script_listing = Script::Listing.find(params[:listing_id])
      @script_url = script_listing.urls.find(params[:id])
    end

    # POST - Script Athors
    def create
      @script_listing = Script::Listing.find(params[:listing_id])
      @script_url = @script_listing.urls.create(script_url_params)
      if @script_url.save
        redirect_to script_listing_urls_path, notice: 'Author was successfully created.'
        else
          render :new
      end
    end

    # PATCH/PUT - Script Athors
    def update
      if @script_url.update(script_url_params)
        redirect_to script_listing_urls_path, notice: 'Author was successfully updated.'
        else
          render :edit
      end
    end

    # DELETE - Script Athors
    def destroy
      @script_listing = Script::Listing.find(params[:listing_id])
      @script_url = @script_listing.urls.find(params[:id])
      @script_url.destroy
      redirect_to script_listing_urls_path, notice: 'Author was successfully destroyed.'
    end

    private

    # Common Callbacks
    def set_script_url
      @script_url = Script::Url.find(params[:id])
    end

    # Whitelists
    def script_url_params
      params.require(:script_url).permit(:scripturl, :scripturlrelease, :scripturlcdnupdate, :slug, :user_id, :user_name, :listing_id, :version_id, :extension_id)
    end

  end
end
