require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Script::VersionsController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsproHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_script_version, only: [:show, :edit, :update, :destroy]

    # INDEX
    def index
      @script_versions = Script::Version.all
    end

    # SHOW
    def show
      @script_versions = Script::Version.friendly.find(params[:id])
      @versions = Phcscriptcdn::ScriptversionVersions.where(item_id: params[:id], item_type: 'Phcscriptcdn::Script::Version')
    end

    # NEW
    def new
      @script_version = Script::Version.new
    end

    # EDIT
    def edit
    end

    # CREATE
    def create
      @script_version = Script::Version.new(script_version_params)
      @script_version.user_id = current_user.id
      if @script_version.save
        redirect_to script_versions_url, :flash => { :success => 'Version was successfully created.' }
      else
        render :new
      end
    end

    # UPDATE
    def update
      if @script_version.update(script_version_params)
        redirect_to script_versions_url, :flash => { :success => 'Version was successfully updated.' }
      else
        render :edit
      end
    end

    # DELETE
    def destroy
      @script_version.destroy
      redirect_to script_versions_url, :flash => { :error => 'Version was successfully destroyed.' }
    end

    private

    # Common Callbacks
    def set_script_version
      @script_version = Script::Version.friendly.find(params[:id])
    end

    # Whitelist
    def script_version_params
      params.require(:script_version).permit(:script_version_number, :slug, :user_id, :org_id)
    end

  end
end
