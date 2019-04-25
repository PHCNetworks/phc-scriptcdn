require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Script::VersionsController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsproHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_script_version, only: [:show, :edit, :update, :destroy]

    # INDEX - Script Versions
    def index
      @script_versions = Script::Version.where(org_id: current_user.org_id)
    end

    # DETAILS - Script Versions
    def show
      @script_versions = Script::Version.friendly.find(params[:id])
      @versions = Phcscriptcdn::ScriptversionVersions.where(item_id: params[:id], item_type: 'Phcscriptcdn::Script::Version')
    end

    # NEW - Script Versions
    def new
      @script_version = Script::Version.new
      @script_version.user_id = current_user.id
      @script_version.org_id = current_user.org_id
    end

    # EDIT - Script Versions
    def edit
    end

    # POST - Script Versions
    def create
      @script_version = Script::Version.new(script_version_params)
      @script_version.user_id = current_user.id
      @script_version.org_id = current_user.org_id
      if @script_version.save
        redirect_to script_versions_url, notice: 'Version was successfully created.'
        else
          render :new
      end
    end

    # PATCH/PUT - Script Versions
    def update
      @script_version.user_id = current_user.id
      @script_version.org_id = current_user.org_id
      if @script_version.update(script_version_params)
        redirect_to script_versions_url, notice: 'Version was successfully updated.'
        else
          render :edit
      end
    end

    # DELETE - Script Versions
    def destroy
      @script_version.destroy
      redirect_to script_versions_url, notice: 'Version was successfully destroyed.'
    end

    private

    # Common Callbacks
    def set_script_version
      @script_version = Script::Version.friendly.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def script_version_params
      params.require(:script_version).permit(:scriptversion, :slug, :user_id, :org_id, :listing_id)
    end

  end
end
