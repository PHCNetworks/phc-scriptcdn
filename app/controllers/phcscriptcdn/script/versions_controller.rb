require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Script::VersionsController < ApplicationController

    # Filters & Security
    before_action :set_script_version, only: [:show, :edit, :update, :destroy]

    # INDEX - Script Versions
    def index
    @script_versions = Script::Version.all
    end

    # DETAILS - Script Versions
    def show
    end

    # NEW - Script Versions
    def new
      @script_version = Script::Version.new
    end

    # EDIT - Script Versions
    def edit
    end

    # POST - Script Versions
    def create
      @script_version = Script::Version.new(script_version_params)
      if @script_version.save
        redirect_to script_versions_url, notice: 'Version was successfully created.'
        else
          render :new
      end
    end

    # PATCH/PUT - Script Versions
    def update
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
      @script_version = Script::Version.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def script_version_params
      params.require(:script_version).permit(:scriptversion, :slug, :user_id, :user_name)
    end

  end
end
