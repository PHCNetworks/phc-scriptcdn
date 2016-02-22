require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Scriptcdn::ScripturlsController < ApplicationController
    before_action :set_scriptcdn_scripturl, only: [:show, :edit, :update, :destroy]

    # GET /scriptcdn/scripturls
    def index
      @scriptcdn_scripturls = Scriptcdn::Scripturl.all
    end

    # GET /scriptcdn/scripturls/1
    def show
    end

    # GET /scriptcdn/scripturls/new
    def new
      @scriptcdn_scripturl = Scriptcdn::Scripturl.new
    end

    # GET /scriptcdn/scripturls/1/edit
    def edit
    end

    # POST /scriptcdn/scripturls
    def create
      @scriptcdn_scripturl = Scriptcdn::Scripturl.new(scriptcdn_scripturl_params)

      if @scriptcdn_scripturl.save
        redirect_to @scriptcdn_scripturl, notice: 'Scripturl was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /scriptcdn/scripturls/1
    def update
      if @scriptcdn_scripturl.update(scriptcdn_scripturl_params)
        redirect_to @scriptcdn_scripturl, notice: 'Scripturl was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /scriptcdn/scripturls/1
    def destroy
      @scriptcdn_scripturl.destroy
      redirect_to scriptcdn_scripturls_url, notice: 'Scripturl was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_scriptcdn_scripturl
        @scriptcdn_scripturl = Scriptcdn::Scripturl.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def scriptcdn_scripturl_params
        params.require(:scriptcdn_scripturl).permit(:scrpturlname, :scrpturlphc, :scrpturltype, :scriptversion_id, :script_id)
      end
  end
end
