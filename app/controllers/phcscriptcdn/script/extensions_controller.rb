require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Script::ExtensionsController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsproHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_script_extension, only: [:show, :edit, :update, :destroy]

    # INDEX - Script Extension
    def index
      @script_extensions = Script::Extension.all
    end

    # DETAILS - Script Extension
    def show
      @script_extensions = Script::Extension.friendly.find(params[:id])
      @versions = Phcscriptcdn::ExtensionVersions.where(item_id: params[:id], item_type: 'Phcscriptcdn::Script::Extension')
    end

    # NEW - Script Extension
    def new
      @script_extension = Script::Extension.new
    end

    # EDIT - Script Extension
    def edit
    end

    # CREATE - Script Extension
    def create
      @script_extension = Script::Extension.new(script_extension_params)
      @script_extension.user_id = current_user.id
      if @script_extension.save
        redirect_to script_extensions_url, notice: 'Extension was successfully created.'
        else
        render :new
      end
    end

    # PATCH/PUT - Script Extension
    def update
      if @script_extension.update(script_extension_params)
        redirect_to script_extensions_url, notice: 'Extension was successfully updated.'
        else
          render :edit
      end
    end

    # DELETE - Script Extension
    def destroy
      @script_extension.destroy
      redirect_to script_extensions_url, notice: 'Extension was successfully destroyed.'
    end

    private

    # Common Callbacks
    def set_script_extension
      @script_extension = Script::Extension.friendly.find(params[:id])
    end

    # Whitelists
    def script_extension_params
      params.require(:script_extension).permit(:script_extension_name, :script_extension_description, :script_extension, :slug, :user_id)
    end

  end
end
