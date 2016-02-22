require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Scriptcdn::ScriptversionsController < ApplicationController
    before_action :set_scriptcdn_scriptversion, only: [:show, :edit, :update, :destroy]

    # GET /scriptcdn/scriptversions
    def index
      @scriptcdn_scriptversions = Scriptcdn::Scriptversion.all
    end

    # GET /scriptcdn/scriptversions/1
    def show
    end

    # GET /scriptcdn/scriptversions/new
    def new
      @scriptcdn_scriptversion = Scriptcdn::Scriptversion.new
    end

    # GET /scriptcdn/scriptversions/1/edit
    def edit
    end

    # POST /scriptcdn/scriptversions
    def create
      @scriptcdn_scriptversion = Scriptcdn::Scriptversion.new(scriptcdn_scriptversion_params)

      if @scriptcdn_scriptversion.save
        redirect_to @scriptcdn_scriptversion, notice: 'Scriptversion was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /scriptcdn/scriptversions/1
    def update
      if @scriptcdn_scriptversion.update(scriptcdn_scriptversion_params)
        redirect_to @scriptcdn_scriptversion, notice: 'Scriptversion was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /scriptcdn/scriptversions/1
    def destroy
      @scriptcdn_scriptversion.destroy
      redirect_to scriptcdn_scriptversions_url, notice: 'Scriptversion was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_scriptcdn_scriptversion
        @scriptcdn_scriptversion = Scriptcdn::Scriptversion.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def scriptcdn_scriptversion_params
        params.require(:scriptcdn_scriptversion).permit(:scrptversion)
      end
  end
end
