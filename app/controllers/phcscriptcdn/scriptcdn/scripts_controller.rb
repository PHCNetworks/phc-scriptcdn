require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Scriptcdn::ScriptsController < ApplicationController
    before_action :set_scriptcdn_script, only: [:show, :edit, :update, :destroy]

    # GET /scriptcdn/scripts
    def index
      @scriptcdn_scripts = Scriptcdn::Script.all
    end

    # GET /scriptcdn/scripts/1
    def show
    end

    # GET /scriptcdn/scripts/new
    def new
      @scriptcdn_script = Scriptcdn::Script.new
    end

    # GET /scriptcdn/scripts/1/edit
    def edit
    end

    # POST /scriptcdn/scripts
    def create
      @scriptcdn_script = Scriptcdn::Script.new(scriptcdn_script_params)

      if @scriptcdn_script.save
        redirect_to @scriptcdn_script, notice: 'Script was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /scriptcdn/scripts/1
    def update
      if @scriptcdn_script.update(scriptcdn_script_params)
        redirect_to @scriptcdn_script, notice: 'Script was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /scriptcdn/scripts/1
    def destroy
      @scriptcdn_script.destroy
      redirect_to scriptcdn_scripts_url, notice: 'Script was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_scriptcdn_script
        @scriptcdn_script = Scriptcdn::Script.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def scriptcdn_script_params
        params.require(:scriptcdn_script).permit(:scrptname, :scrptdescription, :scriptversion_id)
      end
  end
end
